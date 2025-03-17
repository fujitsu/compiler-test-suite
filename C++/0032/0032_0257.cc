
#include <iostream>
using namespace std;

struct A {
   protected:
   static int a;
};
struct Y: A {
 int f(){
   return  A::a; 
 }
}x;
int A::a=10;


struct AA {
 protected:
  struct BB {
   static int a;
 };
};
struct YY: AA {
};
int AA::BB::a=10;
struct ZZ:YY{
int ff(){
  return  AA::BB::a;
}
}xx;

int main(){
  if (x.f()==10 && xx.ff()==10)
    cout << "ok\n";
  else
    cout << "ng\n";
}
