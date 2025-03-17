
extern "C" void printf(char*,...);
int i=0;
class A {
  public :
  virtual void af()=0;
};
class B  {
 public:
  virtual int bf(int ,char)=0;
};
class C :  public B, virtual public A {
 public:
  void af(){ i++;}
  int bf(int j,char c){ return i+=j+c;}
};
class D :  public C {
};

D obj;  

class E : virtual public A , public C {
};

E eobj; 

int main(){
 C *p;
 p = & eobj; 
 obj.af();
 obj.bf(1,1);
 p->af();
 eobj.bf(2,2);
 if (i==8)
   printf("ok\n");
 else
   printf("ng\n");

 return 0;
}
