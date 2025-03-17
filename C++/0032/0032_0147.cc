extern "C" void printf(char*,...);
 class A {
 public:
    class B{
    public:
         int b;
       };
  };
 class D:public A::B, public A{
 public:
     void foo(){ A::B::b=1;
                 b =10;
                 if (A::B::b != b)
                   printf("NG\n");
                 else
                   printf("ok\n");
     }
   }x;
int main(){
  x.A::B::b=10;
  x.foo();
}
