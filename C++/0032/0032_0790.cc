
#include <stdio.h>

class A {
  public :
  int a;
  A(){a=10;}
};
class B: virtual public A{
}x1;
int f1(){
 return x1.a == 10;
}
class A2{
public:
 int a;
 A2(){a=20;}
};
class B2 :virtual public A2 
{};
class C2 :virtual public A2, public B2{
}x2;
class D2 : public B2, virtual public A2{
}xx2;
int f2(){
 return  x2.a==20 && xx2.a==20;
}

class A3{
public:
 int a;
 A3(){a=30;}
};
class B3:  virtual public A3{
};
class D3: virtual public A3, virtual public B3 {
}x3;
class E3: virtual public B3, virtual public A3 {
}xx3;
int f3(){
return x3.a==30 && xx3.a==30;
}

class A4{
public:
 int a;
 A4(){a=40;}
};
class B4 : public A4{};
class C4 : virtual public B4{};
class D4 : virtual public B4,virtual public C4 {
}x4;
int f4(){
 return x4.a==40;
}

class A5 {
public:
  int a;
  A5(){a=100;}
};
class B5:virtual public A5{
public:
  int a;  
  B5(){a=50;}
};
class C5:virtual public B5,virtual public A5{
}x5;
class D5:virtual public A5,virtual public B5{
}xx5;
int f5(){
  return x5.a==50 && xx5.a==50;
}

class A6 {
public: 
  int a;
  A6(){a=600;}
};
class B6 :public virtual A6{
public:
   int a;
   B6(){a=60;}
 };
class C6:public B6,public virtual A6{
}x6;
class D6:public virtual A6,public B6 {
}xx6;
int f6(){
  return x6.a==60 && xx6.a==60;
}

class A7 {
public:
  int a;
  A7(){    a=70; }
};
class B7 : public virtual A7{};
class C7 : public virtual A7{};
class D7 : public B7,virtual public C7, public virtual A7{
}x7;
class E7 : virtual public C7, public virtual A7, public B7{
}xx7;
class F7 : virtual public A7, public B7, public virtual C7{
}xxx7;
int f7(){
 return x7.a==70 && xx7.a==70 && xxx7.a==70;
}

class A8 {
public: 
  int a;
  A8(){a=800;}
};
class B8 :virtual public A8{
public:
  int a;
  B8(){a=80;}
};
class C8:public virtual B8{};
class D8:public virtual A8{};
class E8:public C8,virtual public B8, public D8{
}x8;
class F8:virtual public B8, public D8, public C8{
}xx8;
class G8: public D8, public C8, virtual public B8{
}xxx8;
int f8(){
 return x8.a==80 && xx8.a==80 && xxx8.a==80;
}

int main(){
 if (f1() && f2() && f3() && f4() &&  
     f5() && f6() && f7() && f8())
      printf("ok\n");
 else
      printf("ng\n");
}
