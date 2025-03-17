
extern "C" void printf(char*,...);
int chk=10;
class A {
 public:
 int a;
};
class X{
 public:
 class A {};
};
class B : public X::A{
 public:
 int b;
};
class C : public A{
 public:
 int c; 
};
void f(){
  int A::*p=&A::a;
  int C::*r=&C::c;
  chk = p==r;
  chk += r==p;
              
  
}
int main(){
  f();
  if (chk == 0)
     printf("ok\n");
  else
     printf("ng\n");
}
