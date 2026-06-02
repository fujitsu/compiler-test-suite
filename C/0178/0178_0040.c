#include <stdio.h>
#include <stddef.h>
#include <stdbool.h>
#include <memory.h>



#define check_m(a,b,c) cnt++; memset(a,0,c); \
        __builtin_memcpy(a,b,c); \
        if (__builtin_memcmp(a,b,c)) printf("ng :%d\n",cnt); \
        else                         printf("ok :%d\n",cnt);

static int cnt=0;
int check_f(char *a, char *b, int c) {
  cnt++;
  memset(a,0,c);
  __builtin_memcpy(a,b,c);
  if (__builtin_memcmp(a,b,c)) printf("ng :%d\n",cnt);
  else               printf("ok :%d\n",cnt);
}
int main() {
  int i;
  char buf1[4096],buf2[4096];

  for(i=0;i<4096;i++) buf1[i]=i%256;

  printf("mem test \n");
  check_f(buf2,buf1,   0);
  check_f(buf2,buf1, 256);
  check_f(buf2,buf1,4096);

  check_m(buf2,buf1,   0);
  check_m(buf2,buf1, 256);
  check_m(buf2,buf1,4096);
  printf("mem test end \n");
}


