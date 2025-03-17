
extern "C" void printf(char*,...);
struct A {
  struct B {
    struct C {
     int a;
     C(){a=10;}
    };
  };
};
struct C{};
struct D :A::B::C,C {};
struct F :C,A::B::C {};
struct E:D{
  int f(){
   if (this->A::B::C::a==10) return 1;
   else return 0;
  }
}x1;
struct G:F{
  int f(){
   if (this->A::B::C::a==10) return 1;
   else return 0;
  }
}x2;


struct DD :C, virtual A::B::C {};
struct EE:DD{
  int f(){
   if (this->A::B::C::a==10) return 1;
   else return 0;
  }
}x3;
struct FF :virtual A::B::C ,C{};
struct GG:FF{
  int f(){
   if (this->A::B::C::a==10) return 1;
   else return 0;
  }
}x4;


struct TAG {
  struct C{};
  struct A {
    struct B {
      struct C {
       int a;
       C(){a=10;}
      };
    };
  };
  struct D :virtual A::B::C,virtual C {};
  struct E:D{
    int f(){
      if (this->A::B::C::a==10) return 1;
      else return 0;
    }
  }x1;
  struct H :virtual C, virtual A::B::C {};
  struct I:H{
    int f(){
      if (this->A::B::C::a==10) return 1;
      else return 0;
    }
  }x2;
  struct F:A::B::C,C {};
  struct G:F{
    int f(){
      if (this->A::B::C::a==10) return 1;
      else return 0;
    }
  }x3;
  struct J:C, A::B::C {};
  struct K:J{
    int f(){
      if (this->A::B::C::a==10) return 1;
      else return 0;
    }
  }x4;
}xx;

int main(){
 if (x1.f() && x2.f() && x3.f() && x4.f() &&
     xx.x1.f() && xx.x2.f() && xx.x3.f() && xx.x4.f() )
   printf("ok\n");
 else
   printf("ng\n");
 return 0;
}
