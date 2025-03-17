
extern "C" void printf(char*,...);
int i=0;
class A {
 public:
 virtual void af()=0;
};
class BB : virtual public A {
 void af(){i++;}
};
BB bobj;  
class B : virtual public A {
};

class CC : virtual public A, virtual public B {
 void af(){i++;}
};

class C : virtual public A, virtual public B {
};

class DD : virtual public A , public C{
 void af(){i++;}
};

class D : public A , public C{
};

class E : public C{
 public:
 void af(){i++;}
 virtual void ef ()=0;
};
class F : public E {
 void af(){i+=2;}
 void ef(){i+=3;}
};

int main(){
 BB bobj;
 CC cobj;
 DD dobj;
 F  fobj;
 E *ep;
 A*p;

 p = &bobj;
 p-> af();
 p = &cobj;
 p-> af();
 p = &dobj;
 p-> af();
 p = &fobj;
 p-> af();
 ep =  &fobj;
 ep-> ef();

 if (i == 8)
   printf("ok\n");
 else
   printf("ng %d\n",i);
}
