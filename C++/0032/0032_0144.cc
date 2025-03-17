
extern "C" void printf(char*,...);
class A {
  public : 
  int a;
 class B {
    public :
     int b;
  };
};
class AA : virtual public A::B{   
public :
  int b; 
};
class C : virtual public A::B, virtual public AA {
public :
 void f(){
   A::B::b = 10; 
   AA::b=0;
   if (b==0 && A::B::b==10)
     printf("ok\n");
   else
     printf("ng\n");
 }
}x;

int main(){
 x.f();
 return 0;
} 
