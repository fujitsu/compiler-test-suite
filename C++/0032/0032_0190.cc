


extern "C" int printf(const char*,...);
class A {
  public :
   int a;
};
class B : virtual A {
};
class C: virtual public A {
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
};
class BB: public AA {
};
class CC: virtual public BB {
};
class DD: virtual BB {
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
 if (dobj.a==10 && fobj.aa == 100) 
   printf("ok\n");
 else
   printf("ng\n");

}
