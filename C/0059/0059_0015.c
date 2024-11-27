
#include <stdio.h>
#include <stdlib.h>

#define SZ 64
#define TY  unsigned long long int

int main() {
  TY i,j,k,bit[SZ];

  printf("size:%d\n",sizeof(TY));

  for (i=0,j=1; i<SZ; i++,j*=2) {
    bit[i]=j;
  }

  for (i=1,j=SZ-1; j!=0; i<<=1,j--) {
    if (__builtin_clzll(i)!=j) {
      printf("%x %x %x \n",i,j,__builtin_clzll(i));
      printf("__builtin_clzll ng1\n");
      exit(0);
    }
  }

  for (i=2,j=SZ-1; j!=0; i<<=1,j--) {
    if (__builtin_clzll(i-1)!=j) {
      printf("%x %x %x \n",i,j,__builtin_clzll(i-1));
      printf("__builtin_clzll ng2\n");
      exit(0);
    }
  }

  printf("__builtin_clzll ok\n");

  for (i=1,j=0; j<SZ; i<<=1,j++) {
    if (__builtin_ctzll(i)!=j) {
      printf("%x %x %x \n",i,j,__builtin_ctzll(i));
      printf("__builtin_ctzll ng1\n");
      exit(0);
    }
  }
  for (i=2,j=0; j<SZ; i<<=1,j++) {
    if (__builtin_ctzll(i-1)!=0) {
      printf("%x %x %x \n",i-1,j,__builtin_ctzll(i-1));
      printf("__builtin_ctzll ng1\n");
      exit(0);
    }
  }

  printf("__builtin_ctzll ok\n");

  for (i=0; i<SZ; i++) {
    k=__builtin_popcountll(bit[i]);
    if (k!=1) {
      printf("__builtin_popcountll ng1 \n");
      exit(0);
    }
  }

  for (i=0,k=0; i<SZ; i++) {
    k|=bit[i];
    if (__builtin_popcountll(k)!=i+1) {
      printf("__builtin_popcountll ng2 \n");
      exit(0);
    }
  }
  printf("__builtin_popcountll ok \n");

  return 0;
}
