#include <iostream> 
using namespace std;

class X;







#if defined __GNUC__ || ((__cplusplus) && __cplusplus >= 201103L)
class Z;
void c();
#endif

void a(){;}
void f() {}
extern void b(){}
class A { public:
  friend class X;
  friend class Z;
  friend void a();
  friend void b();
  friend void c() { cout << "ok" << endl; }
  X *px;       
  Z *pz;       
  void mfunc() {
    a();       
    b();       
    c();       
  }
}aobj;

int main() {
aobj.mfunc();
}

