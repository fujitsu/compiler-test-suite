#include <stdio.h>

class A1 {
public:
 static int a;
};
class B1:public A1  {
}x1;
int A1::a = 10;

int f1(){
 return x1.a == 10;
}

class A2 {
public:
 static int a;
};
class B2: public A2 {
};
class C2 :public  B2,public A2 {
}x2;
class D2 :public  A2,public B2 {
}xx2;
int A2::a=20;
int f2(){
return x2.a == 20 && xx2.a==20;
}

class A3 {
public:
  static int a;
};
class B3 :public A3{
};
class C3 :public A3 {
};
class D3: public B3,public C3{
}x3;
int A3::a=30;
int f3(){
 return  x3.a==30;
}
  
class A4{
public:
 static int a;
};
class B4:public A4{
};
class C4:public A4{
};
class D4:public C4{
};
class E4:public A4{
};
class : public B4,public D4, public E4 {
}x4;
int A4::a=40;
int f4(){
 return  x4.a==40;
}
int main(){
 if (f1() && f2() && f3() && f4())
    printf("ok\n");
 else
    printf("ng\n");
  return 0;
}
