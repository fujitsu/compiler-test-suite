


extern "C" int printf(const char*,...);
class A {
  public :
static    int a;
};
class B :  A {
};
class C:  public A {
};
int A::a=0;
class D : public B,public C {
 public:
  void f(){
   a=10;       
  } 
};


class AA {
  public :
static   int aa;
};
int AA::aa = 0;
class BB: public AA {
};
class CC:  public BB {
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


D dobj;
FF fobj;
int main(){
 dobj.f();
 fobj.f();
 if (dobj.a==10 && fobj.aa == 100) 
   printf("ok\n");
 else
   printf("ng\n");

}
