extern "C" int printf(const char*,...);
class A {
#ifdef __clang__
 public:
#else
 protected:
#endif
  static int a;
};
int A::a=10;
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

void f(){
 A::a+=10;  
}
int ff(){
 A::a+=20; 
 return A::a;
 }

int check1(){
 f();
 if (ff()== 40)
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
  static int a;
};
int A2::a=10;
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
void AA2::ff(){
 A2::a+=10;  
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
 A2::a+=20;
 return A2::a;
 }
int check2(){
 AA2 obj; 
 obj.ff();
 if ( obj.fff() == 40)
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
  static int a;
};
int A3::a =20;
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
int AA3::xx = A3::a;

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
int EE3::ee = A3::a;

int check3(){
 if  (EE3::ee == 20 && AA3::xx == 20)
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
