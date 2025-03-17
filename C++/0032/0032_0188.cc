

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
class DD: virtual AA::BB::CC,  public CC {
 public:
  void f(){
   cc = 10;
 }
};

class EE {
  public :
  short ee;
};
class FF: virtual  public EE {
};
struct GG :  FF, virtual EE {
  void f(){
    ee =10;
  }
};
class HH {
 public:
  class JJ{
    public:
    int ii;
  };
  class II : virtual public JJ{
   public:
  };
};
class II : public HH::II  {};
class JJ : public HH::II,  public II{
 public:
  void f(){
   ii = 10;
 };
};

int main(){
 JJ jobj;
 DD dobj;
 GG gobj; 

 gobj.f();
 dobj.f();
 jobj.f();
 if (dobj.cc==10 && gobj.ee == 10 && jobj.ii==10)
   printf("ok\n");
 else
   printf("ng\n");

}

