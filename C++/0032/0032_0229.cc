

extern "C" void printf(char*,...);

class A {
 public:
   int a;
   A(){a=10;}
};
class B : virtual public A{
 public:
  int b;
};
class C:  public B, virtual A {
 public:
  int f(){
    return A::a;
  }
};

class A2 {
 public:
static   int a2;
};
class B2: virtual public A2 {
};
class C2 : virtual private A2, virtual public B2{};
class D2 : public C2 , public B2 {
 public:
  int f(){
   return A2::a2;
  }
};
int A2::a2=20;

class A3 {
  protected :
  int a3;
  A3(){a3=30;}
};
class B3 : protected A3 {};
class C3 : virtual public B3 {
 public:
int f(){
 return A3::a3;
 }
};


int main(){
C obj;
D2 obj2;
C3 obj3;
 if ( obj.f()==10 &&  obj2.f()==20 && obj3.f()==30)
   printf("ok\n");
 else
   printf("ng\n");
}
