
extern "C" void printf(char*,...);
struct A { int i1; A(){i1=0;}} ;
struct B :public A {};
struct X {
  struct A : public B{ public : int ii; } ;
};
struct Y{ struct A {};};
struct C: public X::A  { int i2; C(){i1=10;};};
struct D : public Y::A ,public X::A{ };
C b;
D d;
A *p=&b;   
A  *q= &d;
int main(){
  if (p -> i1 == 10 && q->i1 == 0)
    printf("ok\n");
  else
    printf("ng\n");
} 
