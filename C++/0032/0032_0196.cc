

extern "C" void printf(char*,...);
int ctor=0;
class AA{
 public:
  class BB {
    public :
      int i;
    BB(){ ctor+=10; }
  };
  AA(){ctor+=100; }
};
class CC {
 public:
  class BB : virtual public AA::BB {
  public:
    BB(){ ctor+=20;  }
  };
  CC(){ ctor+=100;  }
};
class DD {
 public:
  class EE {
  public:
    class BB :  public CC::BB, virtual public AA::BB{
    public:
      BB(){ ctor+=30;  }
    };
    EE(){ ctor+=100;}
  };
 DD(){ ctor+=100;}
};

class BB :  public DD::EE::BB, public CC::BB, virtual public AA::BB 
{
 public:
 BB(){  ctor+=40; }
 void f(){
      i =10;
    }
};

int main(){
  BB obj;
  obj.f();
  if (obj.i == 10 && ctor == 120 )
    printf("ok\n");
  else
    printf("ng %d,%d\n",obj.i, ctor);
} 
