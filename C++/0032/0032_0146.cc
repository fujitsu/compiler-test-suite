extern "C" void printf(char*,...);
 class A {
 public:
    class B{
    public:
       class C{
       public:
         int b;
       };
    };
 };
class X {
 public:
       class C{
       public:
         int b;
       };
};
 class D:public A::B::C, public X::C{
 public:
     void foo(){ 
                 A::B::C::b=1;
                 X::C::b = 0;

                 if (A::B::C::b!=X::C::b)
                    printf("ok\n");
                 else
                     printf("NG\n");
                 }  
 }x;                           
int main(){
  x.foo();    
  return 0;
}
