
extern "C" void printf(char*,...);
int chk=0;
class A {
 public:
 int a;
};
struct  B {
  int b;
  struct A {
    virtual  void func(){
       chk+=10;
    }
    virtual  void func2(){
       chk+=100;
    }
  };
};
class C: public A ,public  B::A{
  virtual void func(){
     chk+=1000;
  }
}x;


class AA {
 public:
 int a;
 virtual  void func(){
     
 }
};
struct  BB {
  int b;
  struct AA {};
};
class CC: public AA ,public  BB::AA{
  virtual void func(){
      chk+=50;
  }
};

int main(){
  C obj;
  CC objcc;
  B::A *p;
  AA  *pp;
  A *q =&obj;
  p= (B::A *)&obj;
  pp = &objcc; 
  p->func();  
  p->func2(); 
  pp->func(); 
  if (chk==1150)
    printf("ok\n");
  else
    printf("ng\n");
}

