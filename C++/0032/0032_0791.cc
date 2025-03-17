#include <stdio.h>

class A1 {
public:
  static int a;
}x1;
int A1::a=10;
int f1(){
 return x1.a==10;
}


class A2 {
  public :
   static int a;
};
class B2 : virtual public A2 {};
class C2 :public B2,virtual public A2{
}x2;
class D2 :virtual public A2,public B2{
}xx2;
int A2::a=20;
int f2(){
  return x2.a==20 && xx2.a==20;
}

class A3 {
  public :
  static int a;
};
class B3:public A3 {
};
class C3:public B3,virtual public A3 {
}x3;
int A3::a = 30;
int f3(){
 return x3.a==30;
}

class A4 {
  public :
  static int a;
};
class B4 :virtual A4 {
};
class C4 : public  A4 {
};
class D4 :public B4, virtual public C4{
}x4;
class E4 :public virtual C4, public B4{
}xx4;
int A4::a=40; 
int f4(){
  return x4.a==40 && xx4.a==40;
}

class A5 {
  public :
  static int a;
};
class B5:public virtual A5 {
public:
static int a;
};
class C5:public B5,virtual public A5 {
}x5;
class D5:virtual public A5, public B5 {
}xx5;
int A5::a = 500;
int B5::a = 50;
int f5(){
  return x5.a==50 && xx5.a==50;
}

class A6 {
  public :
  static int a;
};
class B6:public virtual A6 {
public:
int a;
 B6(){a=60;}
};
class C6:public B6,virtual public A6 {
}x6;
class D6:virtual public A6, public B6 {
}xx6;
int A6::a = 600;
int f6(){
  return x6.a==60 && xx6.a==60;
}

class A7 {
  public :
  static int a;
};
class B7:public virtual A7 {
public:
static int a;
};
class C7:virtual public A7 {
};
class D7:virtual public B7, public C7 {
}x7;
class E7:public C7,virtual public B7 {
}xx7;
int A7::a = 700;
int B7::a = 70;
int f7(){
  return x7.a==70 && xx7.a==70;
}

class A8 {
  public :
  static int a;
};
class B8: virtual public A8{};
class C8: public A8{};
class D8: virtual public C8{};
class E8: virtual public A8{};
class F8: public B8,public C8,public D8{
}x8;
class G8: public C8,public D8,public B8{
}xx8;
class H8: public D8,public B8,public C8{
}xxx8;
int A8::a=80;
int f8(){
 return x8.a==80 && xx8.a==80 && xxx8.a==80;
}


class C9 {
public:
  static int a;
};
class B9: public virtual C9{};
class D9 :public C9 {};
class A9: public B9, public D9, virtual public C9 {
}x9;
class E9: public D9, virtual public C9, virtual public B9 {
}xx9;
class F9: virtual public C9, public B9,  public D9 {
}xxx9;
int C9::a=90;
int f9(){
 return x9.a==90 && xx9.a==90 && xxx9.a==90;
}

class E10 {
public:
 int a;
};
class C10 : public virtual E10 {
public:
static int a;
};
class B10 : virtual public E10{
};
class D10 : virtual public E10{
};
class A10: public B10,public virtual C10,public D10{
}x10;
class F10: public virtual C10,public D10, public B10{
}xx10;
class G10: public D10, public B10,public virtual C10{
}xxx10;

int C10::a=100;
int f10(){
  return x10.a==100 && xx10.a==100 && xxx10.a==100;
}


class C11 {
public:
  static int a;
};
class B11:public virtual C11 {
};
class D11:public C11{
};
class A11:public B11, virtual public D11,public C11{
}x11;
class E11:virtual public D11,public C11,public B11 {
}xx11;
class F11:public C11,public B11,virtual public D11 {
}xxx11;
int C11::a=110;
int f11(){
  return x11.a==110 && xx11.a==110 && xxx11.a==110;
}

class B12 {
public:
  static int a;
};
class C12: public B12 {
};
class A12:virtual B12,public C12{
}x12;
int B12::a=120;
int f12(){
return x12.a==120;
}

class C13 {
public:
  int a;
};
class B13 :virtual public C13{
public:
 static int a;
};
class D13 :public B13 {
};
class E13:virtual public C13 {
};
class A13: public B13,public D13, public E13 {
}x13;
class F13: public D13,public E13, public B13 {
}xx13;
class G13: public E13,public B13, public D13 {
}xxx13;
int B13::a=130;
int f13(){
 return x13.a==130 && xx13.a==130 && xxx13.a==130;
}

int main(){
  if (f1() && f2() && f3() && f4() &&
      f5() && f6() && f7() && f8() &&
      f9() && f10() && f11() && f12() && f13()  )
    printf("ok\n");
  else
    printf("ng\n");
}
