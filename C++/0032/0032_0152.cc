extern "C" void printf(char*,...);
class A {
 public:
typedef int I;
};

  class B {
    public :
    class A {
      public :
     typedef char I;
    };
  };
  class C : public B{
  public:
  A::I x;
   int f(){
   A::I y;   
    return sizeof(x) == sizeof(y);    
   }
  }xx;

int main(){
   if (xx.f())
     printf("ok\n");
   else 
     printf("ng\n");
 }

