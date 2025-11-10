#include <stdio.h>

int Array[1][2];
int main() {
  try
  {
    throw Array;
  }
  catch (int[][3])
  {
    printf("ng1\n");
  }
  catch (int[][2])
  {
    printf("ok\n");
  }
  catch (...)
  {
    printf("ng2\n");
  }
}

