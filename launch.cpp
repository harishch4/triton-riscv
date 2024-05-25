#include "ExecutionEngine/CRunnerUtils.cpp"
#include "ExecutionEngine/CRunnerUtils.h"
#include <assert.h>
#include <iostream>
#include <stdbool.h>

extern "C" {
// Pointer type (=Memref) becomes int64_t + MemRef struct
// FIXME: understand what this int64_t is used for.
void add_kernel(int64_t, void *, int64_t, void *, int64_t, void *, int32_t, int,
                int, int, int, int, int);
}

static void _launch(int gridX, int gridY, int gridZ, void *arg0, void *arg1,
                    void *arg2, int32_t arg3) {
  if (gridX * gridY * gridZ > 0) {
    // Cast "function" to the real function type.
    for (int x = 0; x < gridX; x++) {
      for (int y = 0; y < gridY; y++) {
        for (int z = 0; z < gridZ; z++) {
          std::cout << "(" << x << ", " << y << ", " << z << ")\n";
          // Use some random type "char" here.
          StridedMemRefType<char, 0> ptr_arg0 = {static_cast<char *>(arg0),
                                                 static_cast<char *>(arg0), 0};
          StridedMemRefType<char, 0> ptr_arg1 = {static_cast<char *>(arg1),
                                                 static_cast<char *>(arg1), 0};
          StridedMemRefType<char, 0> ptr_arg2 = {static_cast<char *>(arg2),
                                                 static_cast<char *>(arg2), 0};
          // for (int i = 0; i < arg3; i++) {
          //   std::cout << "(" << ptr_arg0.data[i] << ", " << ptr_arg1.data[i]
          //             << ", " << ptr_arg2.data[i] << ")\n";
          // }

          add_kernel(0, &ptr_arg0, 0, &ptr_arg1, 0, &ptr_arg2,
                     static_cast<int32_t>(arg3), gridX, gridY, gridZ, x, y, z);
        }
      }
    }
  }
}

int main() {
  std::cout << "Inside main\n";
  int gridX, gridY, gridZ;
  int *arg0, *arg1, *arg2;
  int arg3;
  gridX = gridY = gridZ = 2;
  arg3 = 1024;
  arg0 = (int *)malloc(arg3 * sizeof(int));
  arg1 = (int *)malloc(arg3 * sizeof(int));
  arg2 = (int *)malloc(arg3 * sizeof(int));
  for (int i = 0; i < arg3; i++) {
    arg0[i] = i;
    arg1[i] = i;
    arg2[i] = i;
  }
  _launch(gridX, gridY, gridZ, arg0, arg1, arg2, arg3);
  std::cout << "Done\n";
  for (int i = 0; i < arg3; i++) {
    std::cout << "(" << arg0[i] << ", " << arg1[i] << ", " << arg2[i] << ")\n";
  }
}