
extern "C" void printf(char*,...);
int i=0;
class A {
 public:
 virtual void af()=0;
};

class B : virtual public A {
 void af(){ i+=10;}
};

class C : virtual public A, virtual public B {
};

class DD : virtual public A , public C{
 public:
 void af(){i+=20;}
 virtual void df ()=0;
};

class D : virtual public A , public C{
};

class E : public DD{
 public:
 void df(){i+=30;}
};
class F : public E {
};

int main(){
 C cobj;
 D dobj;
 F fobj;
 DD *dp;
 A*p;

 p = &cobj;
 p-> af();
 p = &dobj;
 p-> af();
 p = &fobj;
 p-> af();
 dp =  &fobj;
 dp-> df();

 if (i == 70)
   printf("ok\n");
 else
   printf("ng %d\n",i);
}
