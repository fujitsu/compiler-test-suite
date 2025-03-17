

extern "C" void printf(char*,...);
class A {
 public:
 class B {int b;}ab;
 class C {
   public:
    class B {
    public:
       int b;
        B(){b=100;}
    }acb;
  }ac;
 int  f(){
   C::B *p=&ac.acb;
   return p->b;
   }
}a;


int func(){
 class B {int b;}ab;
 class C {
   public:
    class B {
    public:
       int b;
        B(){b=50;}
    }acb;
  }ac;
 C::B *p=&ac.acb;
 return p->b;
}

int main()
{
 if (a.f() == func()*2)
   printf("ok\n");
 else
   printf("ng\n");
 return 0;
}

