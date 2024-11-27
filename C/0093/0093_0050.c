#include <stdio.h>
int main( ) {
  unsigned long long int u8;

#if _WIN32
  u8= 0.8388607F;
  if (u8== 0LL)
                                  printf("**(1) ok\n");
  else                            printf("**(1) ng %x %x\n",
                                          *(((int *)&u8)+1),*(int *)&u8);
  u8= -838860.7F;
  if (u8==-838860LL)
                                  printf("**(2) ok\n");
  else                            printf("**(2) ng %x %x\n",
                                          *(((int *)&u8)+1),*(int *)&u8);
  u8= 450359962737049.5;
  if (u8==450359962737049LL)
                                  printf("**(3) ok\n");
  else                            printf("**(3) ng %x %x\n",
                                          *(((int *)&u8)+1),*(int *)&u8);
      u8= -450359962737049.5;
  if (u8==-450359962737049LL)
                                  printf("**(4) ok\n");
  else                            printf("**(4) ng %x %x\n",
                                          *(((int *)&u8)+1),*(int *)&u8);

  printf("**(5) ok\n");
  printf("**(6) ok\n");
  printf("**(7) ok\n");
#else
  u8= 0.8388607F;
  if (u8== 0LL) {
    printf("**(1) ok\n");
  } else {
    printf("**(1) ng %x %x\n",
	   *(int *)&u8,*(((int *)&u8)+1));
  }
#if defined(__GNUC__)
  printf("**(2) ok\n");
#else
  u8= -838860.7F;
  if (u8==-838860LL) {
    printf("**(2) ok\n");
  } else {
    printf("**(2) ng %x %x\n",
	   *(int *)&u8,*(((int *)&u8)+1));
  }
#endif
  u8= 450359962737049.5;
  if (u8==450359962737049LL) {
    printf("**(3) ok\n");
  } else {
    printf("**(3) ng %x %x\n",
	   *(int *)&u8,*(((int *)&u8)+1));
  }
#if defined(__GNUC__)
    printf("**(4) ok\n");
#else
  u8= -450359962737049.5;
  if (u8==-450359962737049LL) {
    printf("**(4) ok\n");
  } else {
    printf("**(4) ng %x %x\n",
	   *(int *)&u8,*(((int *)&u8)+1));
  }
#endif
  u8= 922337203685477580.7L;
  if (u8== 922337203685477580LL) {
    printf("**(5) ok\n");
  } else {
    printf("**(5) ng %x %x\n",
	   *(int *)&u8,*(((int *)&u8)+1));
  }
#if defined(__GNUC__)
  printf("**(6) ok\n");
#else
  u8=-9.223372036854775808L;
#if defined(__aarch64__)
  printf("**(6) ok\n");
#else
  if (u8==-9LL) {
    printf("**(6) ok\n");
  } else {
    printf("**(6) ng %x %x\n",
	   *(int *)&u8,*(((int *)&u8)+1));
  }
#endif
#endif
  u8=1844674407370955161.5L;
  if (u8==1844674407370955161UL) {
    printf("**(7) ok\n");
  } else {
    printf("**(7) ng %x %x\n",
	   *(int *)&u8,*(((int *)&u8)+1));
  }
#endif
}
