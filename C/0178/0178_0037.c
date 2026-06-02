#include <stdio.h>
#include <stddef.h>
#include <stdbool.h>


#define check_exp(a,b) if (cnt++,__builtin_expect(a,b)==a) \
 printf("ok %d \n",cnt); else printf("ng %d \n",cnt);

int func(int cnt) { check_exp(256,-5); }
int main() {
  int cnt=0;
  int i=1;

  printf("expect test\n");

  if (i==1) check_exp(0,1)
  else      check_exp(1,0)
  if (i==0) check_exp(0,1)
  else      check_exp(1,0)
  check_exp(-1,256);
  func(cnt);
  check_exp(-256,0);
  check_exp(256,1-0*5);
  check_exp(i,100);
  check_exp(cnt,-5);
  check_exp(0x7FFFFFFFFFFFFFFF,5);
  check_exp(0x8000000000000000,5);

  printf("test end \n");
}

