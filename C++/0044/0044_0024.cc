#include <stdio.h>

int (*Func)(int);
int main() {
  try
  {
    throw Func;
  }
  catch (double (*)(double))
  {
    printf("ng1\n");
  }
  catch (double (*)(int))
  {
    printf("ng3\n");
  }
  catch (int (*)(int))
  {
    printf("ok\n");
  }
  catch (...)
  {
    printf("ng2\n");
  }
}

