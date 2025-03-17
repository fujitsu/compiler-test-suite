
extern "C" void printf(char*,...);
class A { int a; int b;};
typedef int Y;
void f(){
  typedef double Y;
  class B {
    public:
     int ai;
     int  ff(){
       A x;
       { typedef int A;}
       return sizeof (x); 
     }
     int  ff2(){
       Y x;
       return sizeof (x); 
     }
  };

  B obj;
  if (obj.ff()==8 && obj.ff2()==8)
    printf("ok\n");
  else
    printf("ng\n");
}
int main(){
 f();
}

