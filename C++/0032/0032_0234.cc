
extern "C" void printf(char*,...);
struct B{ int i;};
struct C : B{};
struct A {
 struct B:  C{
 };
}; 
int B::*p = &B::i;
A::B obj;
void f(){
 obj.*p = 10;  
}

class AA {
 public:
  class BB {
    public :
      int i;
  };
};
class BB : public AA::BB{ public: int j;};
int AA::BB::*pp= &AA::BB::i;
BB obja;
void ff(){
 obja.*pp =20;
}

int main(){
 f();
 ff();
 if (obj.i==10 && obja.i == 20)
    printf("ok\n");
 else 
    printf("ng\n");
 return 0;
}
