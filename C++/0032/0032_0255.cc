
 extern "C" void printf(char*,...);
struct  B1 {
  struct A1 {
   int a;
   A1(){a=10;}
  }ba1;
}bb1;

class C1: public  B1::A1{
}cc1;
int f1()
{
  if (cc1.B1::A1::a==10) return 1;
  else return 0;
}
  

  struct X2 {  struct S2 {  static int a;  };};
  int X2::S2::a=1;
  struct A2 : public X2, public X2::S2{}aobj2;
  int f2(){
     if (aobj2.X2::S2::a==1) return 1;
     else return 0;
  }

  struct X3 {  struct S3 {   int a; S3(){a=10;} };};
  struct A3 : public X3, public X3::S3{
    int ff(){ return a;}
  }aobj3;
  void ff3(){
    aobj3.X3::S3::a=1; 
  }
 int f3(){
  ff3();
  if (aobj3.X3::S3::a== 1 ) return 1;
  else return 0;
 }

struct A4 {
 struct B4 { 
   struct C4 {
     int a;
     C4(){a=100;}
   };
 };
};
struct C4{};
struct D4: C4, virtual A4::B4::C4 ,A4::B4 {
 D4(){a=0;}   
};
struct E4: D4, virtual A4::B4::C4 {
  int f(){
     return A4::B4::C4::a && this->A4::B4::C4::a;
  }
}x4;
int f4(){
  if (x4.f()) return 1;
  else return 2;
}

int main(){
 if (f1() && f2() && f3() && f4())
   printf("ok\n");
 else 
   printf("ng\n");
}
