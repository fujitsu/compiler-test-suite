#include <stdio.h>
int main( ) {
  signed   long long int i8;
  unsigned long long int u8;

  i8= 8388.607F;
  if (i8== 8388LL)
                                  printf("**(1) ok\n");
  else                            printf("**(1) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= -8388.608F;
  if (i8== -8388LL)
                                  printf("**(2) ok\n");
  else                            printf("**(2) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= 4503599627370.495;
  if (i8==4503599627370LL) 
                                  printf("**(3) ok\n");
  else                            printf("**(3) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= -4503599.627370496;
  if (i8==-4503599LL) 
                                  printf("**(4) ok\n");
  else                            printf("**(4) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= 9.223372036854775807L;
  if (i8== 9LL)
                                  printf("**(5) ok\n");
  else                            printf("**(5) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
      i8=  -922.3372036854775808L;
  if (i8== -922LL)
                                  printf("**(6) ok\n");
  else                            printf("**(6) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
}
