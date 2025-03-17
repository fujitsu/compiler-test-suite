#include <stdio.h>
#include <memory.h>

int result;

class A { public:int a; A():a(10){}};
                                                  
class B {                                     
  public:                                       
  B(){}
  A zz[10];
  int yy[5];
  char *xx[100];
  class A* ary[100];                       
};
int main()
{
  A aobj;
  B bobj1;

  bobj1.zz[1].a = 1;
  bobj1.zz[8].a = 8;
  bobj1.yy[0] = 10;
  bobj1.yy[3] = 30;
  memcpy(bobj1.xx, "abcdef", sizeof("abcdef"));
  bobj1.ary[10] = &aobj;

  B bobj2 = bobj1;
  if (bobj2.zz[1].a == 1 && bobj2.zz[8].a == 8 &&
      bobj2.yy[0] == 10 && bobj2.yy[3] == 30 && 
      !memcmp(bobj2.xx, "abcdef", sizeof("abcdef")) &&
      (bobj2.ary[10])->a == 10)
    result++;
  else
    printf("ng 1 \n");

  B bobj3;
  bobj3 = bobj1;
  if (bobj3.zz[1].a == 1 && bobj3.zz[8].a == 8 &&
      bobj3.yy[0] == 10 && bobj3.yy[3] == 30 && 
      !memcmp(bobj3.xx, "abcdef", sizeof("abcdef")) &&
      (bobj3.ary[10])->a == 10)
    result++;
  else
    printf("ng 2 \n");

  if (result == 2)
    printf("ok\n");

}

