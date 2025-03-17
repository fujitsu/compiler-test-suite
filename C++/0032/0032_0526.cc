

extern "C" void printf(char*,...);
class A {
 public:
  int a;
};
class B : virtual  A {
 public:
  int b;
};
class C: virtual public A ,virtual public B{
  public :
   int c;
};
class D : virtual public C {public: int d;};
class E : virtual public D,public C{};
int main(){
 E obj;
 A *pa;
 pa =&obj;
 obj.a=10;
 if (pa -> a == 10)
   printf("ok\n");
 else
   printf("ng\n");
}
