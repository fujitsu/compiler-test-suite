#include <stdio.h>
int main() {
  for (int VarI=0;VarI<10; VarI++)
  {
    {
      int VarI=0;
      VarI = VarI+3;
    }
  }
  printf("ok\n");
}

