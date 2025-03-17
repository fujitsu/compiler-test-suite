
 
extern "C" void printf(char*,...);
int chk=0;
class A {
 private:
  friend void checkA();
  static int a;
  enum {e1,e2};
  static void func(){
   chk+=a;
  }
};

void checkA(){
    A::a += A::e2;
    A::func();
}



class AA {
 public:
  class BB {
  private:
   static int a;
   enum tag {e1=9,e2};
   static void func(){
      chk += a;
    }
   friend void checkAA();
 };
};
void checkAA(){
    AA::BB::a += AA::BB::e2;
    AA::BB::func();
  }


class AAA {
 public:
  class BBB {
  private:
   friend void checkAAA();
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
