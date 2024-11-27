
#include <stdio.h>
#include <stdlib.h>

#define SZ 32
#define TY  unsigned int

int main() {
  TY i,j,k,bit[SZ];

  printf("size:%d\n",sizeof(TY));

  for (i=0,j=1; i<SZ; i++,j*=2) {
    bit[i]=j;
  }

  for (i=1,j=SZ-1; j!=0; i<<=1,j--) {
    if (__builtin_clz(i)!=j) {
      printf("%x %x %x \n",i,j,__builtin_clz(i));
      printf("__builtin_clz ng1\n");
      exit(0);
    }
  }

  for (i=2,j=SZ-1; j!=0; i<<=1,j--) {
    if (__builtin_clz(i-1)!=j) {
      printf("%x %x %x \n",i,j,__builtin_clz(i-1));
      printf("__builtin_clz ng2\n");
      exit(0);
    }
  }

  printf("__builtin_clz ok\n");

  for (i=1,j=0; j<SZ; i<<=1,j++) {
    if (__builtin_ctz(i)!=j) {
      printf("%x %x %x \n",i,j,__builtin_ctz(i));
      printf("__builtin_ctz ng1\n");
      exit(0);
    }
  }
  for (i=2,j=0; j<SZ; i<<=1,j++) {
    if (__builtin_ctz(i-1)!=0) {
      printf("%x %x %x \n",i-1,j,__builtin_ctz(i-1));
      printf("__builtin_ctz ng1\n");
      exit(0);
    }
  }

  printf("__builtin_ctz ok\n");

  for (i=0; i<SZ; i++) {
    k=__builtin_popcount(bit[i]);
    if (k!=1) {
      printf("__builtin_popcount ng1 \n");
      exit(0);
    }
  }

  for (i=0,k=0; i<SZ; i++) {
    k|=bit[i];
    if (__builtin_popcount(k)!=i+1) {
      printf("__builtin_popcount ng2 \n");
      exit(0);
    }
  }
  printf("__builtin_popcount ok \n");

  return 0;
}
