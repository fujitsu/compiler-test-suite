

extern "C" int printf(const char*,...);
int chk=0;
class A {
#ifdef __clang__
 public:
#else
 protected:
#endif
  static  int a;
  enum {e1,e2};
  static void func(){
   chk+=a;
  }
};

class B : public A {};
class C : public B {  
  friend void checkA();
};

void checkA(){
    A::a += A::e2;
    A::func();
}



class AA {
#ifdef __clang__
 public:
#else
 protected:
#endif
  class BB {
  public:
   static int a;
   enum tag {e1=9,e2};
   static void func(){
      chk += a;
    }
 };
};
class CC: public AA {};
class DD: public CC {
   friend void checkAA();
};
void checkAA(){
    AA::BB::a += AA::BB::e2;
    AA::BB::func();
  }


class AAA {
#ifdef __clang__
 public:
#else
 protected:
#endif
  class BBB {
   public: 
   class CCC {
   public:
     static int a;
     enum tag {e1=99,e2};
     static void func(){
      chk += a;
      }
   };
 };
};
class DDD : public AAA {};
class EEE : public DDD{
   friend void checkAAA();
};
 void checkAAA(){
   AAA::BBB::CCC::a += AAA::BBB::CCC::e2;
   AAA::BBB::CCC::func();
 }


int A::a=0;
int AA::BB::a=0;
int AAA::BBB::CCC::a=0;
int main(){

 checkA();
 checkAA();
 checkAAA();
 if (chk==111)
   printf("ok\n");
 else
   printf("ng %d\n",chk);
 return 0;

}
