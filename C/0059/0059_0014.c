
#include <stdio.h>
#include <stdlib.h>

#define SZ 64
#define TY  unsigned long int

int main() {
  TY i,j,k,bit[SZ];

  printf("size:%d\n",sizeof(TY));

  for (i=0,j=1; i<SZ; i++,j*=2) {
    bit[i]=j;
  }

  for (i=1,j=SZ-1; j!=0; i<<=1,j--) {
    if (__builtin_clzl(i)!=j) {
      printf("%x %x %x \n",i,j,__builtin_clzl(i));
      printf("__builtin_clzl ng1\n");
      exit(0);
    }
  }

  for (i=2,j=SZ-1; j!=0; i<<=1,j--) {
    if (__builtin_clzl(i-1)!=j) {
      printf("%x %x %x \n",i,j,__builtin_clzl(i-1));
      printf("__builtin_clzl ng2\n");
      exit(0);
    }
  }

  printf("__builtin_clzl ok\n");

  for (i=1,j=0; j<SZ; i<<=1,j++) {
    if (__builtin_ctzl(i)!=j) {
      printf("%x %x %x \n",i,j,__builtin_ctzl(i));
      printf("__builtin_ctzl ng1\n");
      exit(0);
    }
  }
  for (i=2,j=0; j<SZ; i<<=1,j++) {
    if (__builtin_ctzl(i-1)!=0) {
      printf("%x %x %x \n",i-1,j,__builtin_ctzl(i-1));
      printf("__builtin_ctzl ng1\n");
      exit(0);
    }
  }

  printf("__builtin_ctzl ok\n");

  for (i=0; i<SZ; i++) {
    k=__builtin_popcountl(bit[i]);
    if (k!=1) {
      printf("__builtin_popcountl ng1 \n");
      exit(0);
    }
  }

  for (i=0,k=0; i<SZ; i++) {
    k|=bit[i];
    if (__builtin_popcountl(k)!=i+1) {
      printf("__builtin_popcountl ng2 \n");
      exit(0);
    }
  }
  printf("__builtin_popcountl ok \n");

  return 0;
}
