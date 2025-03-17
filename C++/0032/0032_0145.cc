extern "C" void printf(char*,...);
class C {
 public:
  int i;
};
class A {
 public:
 class D : public C{
 public:
 };
};

class B : public A::D {
 public:
 void f(){
 A::D::i =10;
 }
}x;

int main(){
 x.f();
 if (x.i == 10)
   printf("ok\n");
 else
   printf("ng\n");
 return 0;
}
