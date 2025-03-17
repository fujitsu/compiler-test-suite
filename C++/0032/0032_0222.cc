

extern "C" void printf(char*,...);
int chk=0;
class A {
 private:
  static int a;
  enum {e1,e2};
  static void func(){
   chk+=a;
  }
 public:
  void checkA(){
    A::a += A::e2;
    A::func();
  }
  void checkAa(){
    a+= e2;
    func();
  }
};
class AA {
 private:
  class BB {
  public:
   static int a;
   enum tag {e1=9,e2};
   static void func(){
      chk += a;
    }
 };
 public:
  void checkAA(){
    AA::BB::a += AA::BB::e2;
    AA::BB::func();
  }
  void checkAAa(){
    BB::a += BB::e2;
    BB::func();
  }
};
class AAA {
 public:
  class BBB {
  private:
   class CCC {
   public:
     static int a;
     enum tag {e1=99,e2};
     static void func(){
      chk += a;
      }
   };
 public:
   void checkAAA(){
     AAA::BBB::CCC::a += AAA::BBB::CCC::e2;
     AAA::BBB::CCC::func();
   }
   void checkAAAa(){
     CCC::a += CCC::e2;
     CCC::func();
   }
 };
};
int A::a=0;
int AA::BB::a=0;
int AAA::BBB::CCC::a=0;
A aobj;
AA aaobj;
AAA::BBB aaaobj;
int main(){

 aobj.checkA();
 aaobj.checkAA();
 aaaobj.checkAAA();
 aobj.checkAa();
 aaobj.checkAAa();
 aaaobj.checkAAAa();
 if (chk==333)
   printf("ok\n");
 else
   printf("ng %d\n",chk);
 return 0;

}
