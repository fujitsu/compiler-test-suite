
extern "C" void printf(char*,...);
struct A {
  struct B {
    struct C {
     int a;
     C(){a=10;}
    };
  };
};
struct D :A::B::C {}x;
int f(){
 return x.A::B::C::a;
}
struct A2 {
  int a;
  A2(){a=20;}
};
struct B2:A2 {}x2;
int f2(){
  return x2.A2::a;
}

int main(){
 if (f()==10 && f2()==20)
   printf("ok\n");
 else
   printf("ng\n");
 return 0;
}
