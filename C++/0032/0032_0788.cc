
#include <stdio.h>

class A {
public: 
  int a ;
  A(){a=10;}
};
class B : public A {
public:
 int b;
}x;
int f1(){
 return x.a == 10;
}


class A2 {
public:
  int a;
  A2(){a=2;}
};
class B2:public A2{
};
class C2:public B2{
}x2;
int f2()
{
  return x2.a == 2;
}



class A3{
public:
 int a;
 A3(){a=10;}
};
class B3:public A3{
public:
  int a;
  B3(){a=20;}
};
class C3:public B3{
}x3;
int f3(){
 return x3.a==20;
}
int main(){
 if (f1() && f2() && f3())
   printf("ok\n");
 else
   printf("ng\n");
}




