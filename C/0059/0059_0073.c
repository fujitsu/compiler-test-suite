#include <stdio.h>
#define TEST_TYPE double *

TEST_TYPE test01() {
  static  int counter=0;
  printf("f1 call ok%d\n",counter++);
}

TEST_TYPE test02() {
  static  int counter=0;
  printf("f2 call ok%d\n",counter++);
}

int test03() {
  TEST_TYPE (*fnc)();
  TEST_TYPE (*fnc2)();
  int c=7;
  fnc=test01;
  fnc2=test02;

  printf ("test start \n");
  if (sizeof(*fnc)==1) printf("sizeof  ok1\n");
  else                 printf("sizeof  ng1\n");
  if (sizeof( fnc)==8) printf("sizeof  ok2\n");
  else                 printf("sizeof  ng2\n");

  (*fnc)();

  fnc++;
  fnc--;
  (*fnc)();
  --fnc;
  ++fnc;
  (*fnc)();
  fnc+=(unsigned long)fnc2;
  fnc-=(unsigned long)fnc2;
  (*fnc)();
  fnc=fnc-9;
  fnc=fnc+9;
  (*fnc)();
  fnc=fnc-c;
  fnc=fnc+c;
  (*fnc)();

  printf("test end\n");
}		

int main() {
  test03();
  return 0;
}
