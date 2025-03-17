

extern "C" void printf(char*,...);
int chk=0;
class A {
 protected:
  static int a;
  enum {e1,e2};
  static void func(){
   chk+=a;
  }
};
class B : public A {};
class C : private B {
 public:
  void checkA(){
    A::a += A::e2;
    A::func();
  }
};



class AA {
 protected:
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
class DD : public CC {
 public:
  void checkAA(){
    BB::a += BB::e2;
    BB::func();
  }
};


class AAA {
 protected:
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
class EEE : private DDD {
 public:
   void checkAAA(){
     BBB::CCC::a += BBB::CCC::e2;
     BBB::CCC::func();
   }
};

int A::a=0;
int AA::BB::a=0;
int AAA::BBB::CCC::a=0;
C aobj;
DD aaobj;
EEE aaaobj;
int main(){

 aobj.checkA();
 aaobj.checkAA();
 aaaobj.checkAAA();
 if (chk==111)
   printf("ok\n");
 else
   printf("ng %d\n",chk);
 return 0;

}
