
#include <stdio.h>
class A {
#ifdef __clang__
  public:
#else
  protected:
#endif
  static int a;
};
class B : public A {};
class C : protected B{
   friend int ff( );
 };
int ff(){
  return  A::a;
 }
int  A::a=1;

class A2 {
#ifdef __clang__
  public:
#else
  protected:
#endif
  static int a;
};
class B2 : public A2 {};
class C2 : protected B2{
   friend int ff2( );
 };
int ff2(){
  return A2::a;
 }
int  A2::a=2;

class A3 {
#ifdef __clang__
  public:
#else
  protected:
#endif
  static int a;
};
class B3 : public A3 {};
class X3 {
 public: int ff3();
 };
class C3 : protected B3{
   friend int X3::ff3( );
 };
int X3::ff3(){
  return A3::a;
 }
int  A3::a=3;

class A4 {
#ifdef __clang__
  public:
#else
  protected:
#endif
  static int a;
};
class B4 : public A4 {};
class X4;
class C4 : protected B4{
   friend class X4;
 };
class X4 {public:int ff4( );};
int X4::ff4(){
  return A4::a;
 }
int  A4::a=4;


class A5 {
#ifdef __clang__
  public:
#else
  protected:
#endif
  static int a;
};
class B5 : public A5 {};
class C5 : protected B5{
   friend int ff5( );
 };
int ff5(){
 B5 x;
  x.a;
  return x.a;
 }
int A5::a=5;

int main(){
 X3 x3obj;
 X4 x4obj;

 if(ff()==1 && ff2()==2 && x3obj.ff3()==3 && x4obj.ff4()==4 && ff5()==5)
   printf("ok\n");
 else 
   printf("ng\n");
 return 0;
}
