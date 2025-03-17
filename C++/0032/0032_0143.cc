
extern "C" void printf(char*,...);
class A {
  public : 
  int a;
  class B {
    public :
     int b;
  };
};
class B {
public :
  int b; 
}y;
class C : public A::B {
public :
 void f(){
   A::B::b = 10; 
 }
}x;

int main(){
 x.f();
 if (x.b == 10) 
   printf("ok\n");
 else
   printf("ng\n");
}
