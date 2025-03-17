


extern "C" void printf(char*,...);
int chk=0;
class A {
 public:
  static int a;
  enum {e1,e2};
  static void func(){
   chk+=a;
  }
};
class B : public A {};
class C : public B {
};
void checkA(){
    C::B::A::a += C::B::A::e2;
    C::B::A::func();
}



class AA {
 public:
  class BB {
  public:
   static int a;
   enum tag {e1=9,e2};
   static void func(){
      chk += a;
    }
 };
};
class CC : public AA {};
class DD : public CC {};
void checkAA(){
    DD::CC::AA::BB::a += DD::CC::AA::BB::e2;
    DD::CC::AA::BB::func();
  }


class AAA {
 public:
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
class EEE : public DDD {};
 void checkAAA(){
    EEE::DDD::AAA::BBB::CCC::a += EEE::DDD::AAA::BBB::CCC::e2;
    EEE::DDD::AAA::BBB::CCC::func();
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
