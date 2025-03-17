#include <stdio.h>
int main()
{
  typedef char *CPTR_A;
  typedef CPTR_A XXX;
  char char_01, char_00;
  static char char_02 = 0xff;

  CPTR_A cptr_b;
  XXX xp;
  
  cptr_b = &char_02;
  char_01 = *cptr_b;

  xp = &char_02;
  char_00 = *xp;
  
  if (char_01 == 0xffffffff &&
      *cptr_b == 0xffffffff &&
      char_02 == 0xffffffff &&
      char_00 == 0xffffffff &&
      *xp == 0xffffffff)
    printf("ok\n");
  else
    {
      printf("ng\n");
      printf("%x\n", char_02);
      printf("%x\n", *cptr_b);
      printf("%x\n", char_01);
      printf("%x\n", *xp);
    }
}
