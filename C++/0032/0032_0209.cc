
extern "C" void printf(char*,...);
int chk =0;
class A {
 public:
};
class X {
 public:
  class A {
  public:
  int a;
  };
}; 
class B :public X::A{};
void f(int B::*p){
    B obj;
    obj.*p = 10;
    chk += obj.a;
}
void check1()
{
  int X::A::*mp = &X::A::a;
  f(mp);  
}


class AA {
 public:
};
class XX {
 public:
  class AA {
  public:
  int a;
  };
}; 
class BB :public XX::AA{};
void ff(XX::AA y){
  chk += y.a;
}
void check2()
{
 BB obj;
 BB & mp=obj;
  obj.a =100;
  ff(mp);    
}


struct X1{
  struct A1 {
   int a;
  };
};
struct A1 {};
struct B1 : X1::A1{};
void func1(const X1::A1& xx ){
  chk+=xx.a;
}
void check3(){
 B1 i;
 i.a = 1000;
 func1(i);  
}


class A2 {
 public:
  int a;
};
class X2 {
 public:
  class A2 {
  public:
     int a;
  };
}; 
class B2 :public X2::A2{};
void f2( const X2::A2 *y){
   chk += y->a;
}
void check4()
{
 B2 obj;
  obj.a = 10000;
  f2(&obj);        
}




int main(){
  check1();
  check2();
  check3();
  check4();
  if (chk == 11110 )
    printf("ok\n");
  else
    printf("ng %d\n",chk);
}
