
extern "C" void printf(char*,...);
class A {
 public:
  class {
     public:
     int a;
  }x;
  A(){x.a=10;}
}y;
class C {
 public:
 struct D {
  class E {
   public:
    int e;
     E (){e=20;}
   };
  };
};
class F: public C{
  class G {};
 public:
  class H: public G ,public C::D, public C::D::E{
  };
};
int main(){
 F::H x;
 if(y.x.a==10 && x.e==20)
   printf("ok\n");
 else 
   printf("ng\n");
 return 0;
}

