

#include <stdio.h>

class AA {
 public:
  class BB {
  public:
   class CC {
     public: 
     int cc;
   };
 };
};
class CC : virtual public AA::BB::CC {
};
class DD: virtual AA::BB::CC, virtual public CC {
 public:
  void f(){
   cc = 10;
 }
};
class EE {
  public :
  short ee;
};
class FF: virtual public EE {
};
struct GG : virtual FF, virtual EE {
  void f(){
    ee =10;
  }
};
class HH {
 public:
  class II {
   public:
    int ii;
  };
};
class II : virtual public HH::II  {};
class JJ : virtual public HH::II, virtual public II{
 public:
  void f(){
   ii = 10;
 };
};

struct  AB {
  struct CD{
    struct XX{
     int i;
    };
  };
};
struct GH{
  struct XX: virtual AB::CD::XX{
  };
};
struct XX :GH::XX{};

struct IJ : virtual XX, virtual AB::CD::XX,virtual GH::XX {
 void f(){
    i = 20;
   }
};

int main(){
 JJ jobj;
 DD dobj;
 GG gobj; 
 IJ ijobj; 

 gobj.f();
 dobj.f();
 jobj.f();
 ijobj.f();
 if (dobj.cc==10 && gobj.ee == 10 && jobj.ii==10 && ijobj.i==20)
   printf("ok\n");
 else
   printf("ng\n");

}

