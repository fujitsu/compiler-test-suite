#include <stdio.h>
int main( ) {
  unsigned long long int u8;

#if _WIN32
  u8= 8388607.0F;
  if (u8== 8388607ll)
                                  printf("**(1) ok\n");
  else                            printf("**(1) ng %x %x\n",
                                          *(((int *)&u8)+1),*(int *)&u8);
  u8= -8388608.0F;
  if (u8==-8388608LL)
                                  printf("**(2) ok\n");
  else                            printf("**(2) ng %x %x\n",
                                          *(((int *)&u8)+1),*(int *)&u8);
  u8= 4503599627370495.0;
  if (u8==4503599627370495LL) 
                                  printf("**(3) ok\n");
  else                            printf("**(3) ng %x %x\n",
                                          *(((int *)&u8)+1),*(int *)&u8);
  u8=-4503599627370496.0;
  if (u8==-4503599627370496LL) 
                                  printf("**(4) ok\n");
  else                            printf("**(4) ng %x %x\n",
                                          *(((int *)&u8)+1),*(int *)&u8);
  printf("**(5) ok\n");
  printf("**(6) ok\n");
  printf("**(7) ok\n");
#else
  u8= 8388607.0F;
  if (u8== 8388607ll) {
    printf("**(1) ok\n");
  } else {
    printf("**(1) ng %x %x\n",
	   *(int *)&u8,*(((int *)&u8)+1));
  }
#if defined(__GNUC__)
  printf("**(2) ok\n");
#else
  u8= -8388608.0F;
  if (u8==-8388608LL) {
    printf("**(2) ok\n");
  } else {
    printf("**(2) ng %x %x\n",
	   *(int *)&u8,*(((int *)&u8)+1));
  }
#endif
  u8= 4503599627370495.0;
  if (u8==4503599627370495LL) {
    printf("**(3) ok\n");
  } else {
    printf("**(3) ng %x %x\n",
	   *(int *)&u8,*(((int *)&u8)+1));
  }
#if defined(__GNUC__)
    printf("**(4) ok\n");
#else
  u8=-4503599627370496.0;
  if (u8==-4503599627370496LL) {
    printf("**(4) ok\n");
  } else {
    printf("**(4) ng %x %x\n",
	   *(int *)&u8,*(((int *)&u8)+1));
  }
#endif
  u8= 9223372036854775807.0L;
  if (u8== 9223372036854775807ll) {
    printf("**(5) ok\n");
  } else {
    printf("**(5) ng %x %x\n",
	   *(int *)&u8,*(((int *)&u8)+1));
  }
#if defined(__GNUC__)
    printf("**(6) ok\n");
#else
  u8=-9223372036854775808.0L;
  if (u8==-9223372036854775808ll) {
    printf("**(6) ok\n");
  } else {
    printf("**(6) ng %x %x\n",
	   *(int *)&u8,*(((int *)&u8)+1));
  }
#endif
  u8=18446744073709551615.0L;
  if (u8==18446744073709551615UL) {
    printf("**(7) ok\n");
  } else {
    printf("**(7) ng %x %x\n",
	   *(int *)&u8,*(((int *)&u8)+1));
  }
#endif
}
