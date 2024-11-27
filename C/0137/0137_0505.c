#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main( ) {
  signed   long long int i8;
  unsigned long long int u8;

  i8= 8388.607F;
  if (i8== 8388LL)
                                  printf("**kaimk2033-(1) ok\n");
  else                            printf("**kaimk2033-(1) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= -8388.608F;
  if (i8== -8388LL)
                                  printf("**kaimk2033-(2) ok\n");
  else                            printf("**kaimk2033-(2) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= 4503599627370.495;
  if (i8==4503599627370LL) 
                                  printf("**kaimk2033-(3) ok\n");
  else                            printf("**kaimk2033-(3) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= -4503599.627370496;
  if (i8==-4503599LL) 
                                  printf("**kaimk2033-(4) ok\n");
  else                            printf("**kaimk2033-(4) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= 9.223372036854775807L;
  if (i8== 9LL)
                                  printf("**kaimk2033-(5) ok\n");
  else                            printf("**kaimk2033-(5) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
      i8=  -922.3372036854775808L;
  if (i8== -922LL)
                                  printf("**kaimk2033-(6) ok\n");
  else                            printf("**kaimk2033-(6) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
exit (0);
}
