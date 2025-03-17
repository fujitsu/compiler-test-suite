
extern "C" void printf(char*,...);
int i=0;
class A {
  public :
  virtual void f()=0;
};
class B : virtual public A {
};
class C : virtual public A {
 public:
  void f(){i++;}
};
class D : public B, public C {
};

D obj;

int main(){
 obj.f();
  B *p = &obj;
 p->f();
 if (i==2)
   printf("ok\n");
 else
   printf("ng\n");
 return 0;
}
