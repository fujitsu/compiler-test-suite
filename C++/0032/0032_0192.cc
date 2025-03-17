


extern "C" int printf(const char*,...);
class A {
  public :
   int a;
  A(){a=0;}
};
class B : virtual A {
};
class C: virtual public A {
  public :
   int  a;
};
class D : public B,public C {
 public:
  void f(){
   a=10;       
  } 
};


class AA {
  public :
  int aa;
  AA(){aa=0;}
};
class BB: public AA {
};
class CC: virtual public BB {
};
class DD: virtual BB {
 public:
  int aa;
};
#ifdef __clang__
class EE : virtual public CC, public DD {
#else
class EE : virtual CC, public DD {
#endif
};
class FF : public EE , virtual public BB {
 public:
 void f(){
   aa =100; 
 }
};


int main(){
D dobj;
FF fobj;
 dobj.f();
 fobj.f();
 if (dobj.a==10 && dobj.A::a == 0 &&fobj.aa == 100 &&fobj.AA::aa == 0) 
   printf("ok\n");
 else
   printf("ng\n");

}
