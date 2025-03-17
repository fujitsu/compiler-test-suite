
extern "C" void printf(char*,...);
class A {
public:
 int a;
};
class X {
 public:
 class A { public : int b;};
};
class B : public X::A{};
int X::A::*q=&X::A::b;
int main(){
 B obj;
  obj.*q = 20; 
 B *r= &obj;
  r->*q =10; 
 if (obj.b == 10 )
   printf("ok\n");
 else 
   printf("ng\n");
 return 0;
}

