#include <stdio.h>
int main()
  {
  int i=0x80000000;
  unsigned int ui=0x80000000;


  i >>= 16U;
  ui >>= 16;
  if (i == 0xffff8000 && ui == 0x00008000)
    printf("ok\n");
  else
    printf("ng %x\n", i);
  }
