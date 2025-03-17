
extern "C" void printf(char*,...);
class A {};
class X{
 public:
  class A {
   public:
    int b;
    int bb;
    A(){b=10;bb=20;}
  };
};
class B :public X::A{
 public:
  int b;
  B(){b=100;}
};
int main()
{
  int X::A::*mp = &X::A::b;
  mp = (int X::A::*)&B::b; 
  B  obj;
  X::A *p = &obj;
  if (p->*mp == 100)
    printf("ok\n");
  else
    printf("ng\n");
}
