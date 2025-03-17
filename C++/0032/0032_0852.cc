extern "C" {
 void printf(char*,...);
}
class A {
 public:
  int a;
  A(){}
  ~A();
};
class B : public A {
  public :
  int b;
}x;
   A::~A(){ printf("ok\n");}
int main(){
  x.a=1;
}


