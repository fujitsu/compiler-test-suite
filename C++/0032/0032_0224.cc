


extern "C" void printf(char*,...);
int chk=0;



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
 class CC : public BB {};
};
void checkAA(){
    AA::CC::BB::a += AA::CC::BB::e2;
    AA::CC::BB::func();
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
  class DDD : public CCC {};
 };
};
void checkAAA(){
     AAA::BBB::DDD::CCC::a += AAA::BBB::DDD::CCC::e2;
     AAA::BBB::DDD::CCC::func();
}

int AA::BB::a=0;
int AAA::BBB::CCC::a=0;

int main(){

 checkAA();
 checkAAA();
 if (chk==110)
   printf("ok\n");
 else
   printf("ng %d\n",chk);
 return 0;

}
