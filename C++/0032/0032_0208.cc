extern "C" int printf(const char*,...);
class A {
#ifdef __clang__
 public:
#else
 protected:
#endif
  enum { e1 , e2, e3 };
};
class X  {
 public:
  class A  {};
};
class B :public X::A, public A{
friend void f();
};
class AA :public A {};
class Y {
 public:
  class A : public AA {};
};
class BB :public Y::A{
friend int ff();
};
int result = 0;
void f(){
 result += A::e2;   
}
int ff(){
 result += A::e3;      
 return result;
 }

int check1(){
 f();
 if (ff()== 3)
   return 1;
 else
   return 0;
}


class A2 {
#ifdef __clang__
 public:
#else
 protected:
#endif
  enum {e1=10, e2, e3};
};
class AA2 {
 public:
void ff();
int fff();
};
class X2 {
 public:
  class A2 {};
};
class B2 :public X2::A2, public A2{
friend class AA2;
};
int result2 =0;
void AA2::ff(){
  result2 += A2::e1;
}

class CC2 : public A2 {};
class XX2 {
 public:
 class A2 : public CC2 {};
};
class BB2 :public XX2::A2{
friend class AA2;
};
int AA2 :: fff(){
 result2 += A2::e2;
 return result2;
 }
int check2(){
 AA2 obj; 
 obj.ff();
 if ( obj.fff() == 21)
   return 1;
 else
   return 0;
}


class A3 {
#ifdef __clang__
 public:
#else
 protected:
#endif
  enum {e1,e2,e3, e4};
};
struct AA3 {
static int xx;
};
class X3 {
  public :
   class A3 {};
};
class B3 :public X3::A3, public A3{
friend class AA3;
};
int AA3::xx = A3::e2;

struct EE3{
 static int ee;
};
class BB3 : public A3 {};
class CC3 {
 public:
  class A3 :public BB3{};
};
class DD3 : public CC3::A3 {
 friend class EE3;
};
int EE3::ee = A3::e4;

int check3(){
 if  (EE3::ee == 3 && AA3::xx == 1)
   return 1;
 else
   return 0;
}

int main(){
 if (check1() && check2() && check3())
   printf("ok\n");
 else
   printf("ng\n");
 return 0;
}
