#include <stdio.h>
int main( ) {
  signed   long long int i8;
  unsigned long long int u8;

  i8= 8388607.0F;
  if (i8== 8388607ll)
                                  printf("**(1) ok\n");
  else                            printf("**(1) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= -8388608.0F;
  if (i8== -8388608ll)
                                  printf("**(2) ok\n");
  else                            printf("**(2) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= 4503599627370495.0;
  if (i8==4503599627370495LL) 
                                  printf("**(3) ok\n");
  else                            printf("**(3) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= -4503599627370496.0;
  if (i8== -4503599627370496LL) 
                                  printf("**(4) ok\n");
  else                            printf("**(4) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= 9223372036854775807.0L;
  if (i8== 9223372036854775807ll)
                                  printf("**(5) ok\n");
  else                            printf("**(5) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8=-9223372036854775808.0L;
  if (i8==-9223372036854775808ll)
                                  printf("**(6) ok\n");
  else                            printf("**(6) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
}
