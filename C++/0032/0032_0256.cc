
#include <iostream>
using namespace std;

struct A {
#ifdef __clang__
   public:
#else
   protected:
#endif
   static int a;
};
struct Y: A {
  friend int f();
}o;

int A::a=10;
int f(){
  return  A::a; 
}

struct AA {
#ifdef __clang__
 public:
#else
 protected:
#endif
  struct BB {
   static int a;
 };
};
struct YY: AA {
  friend int ff();
};
int AA::BB::a=10;
int ff(){
  return  AA::BB::a;
}


int main(){
  if (f()==10 && ff()==10)
    cout << "ok\n";
  else
    cout << "ng\n";
}
