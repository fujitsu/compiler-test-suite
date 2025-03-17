

class  X { public: int a; };
struct Y { public: int b; };
class  A : public Y, public virtual X { public: int aa; };

X  xobj;
X& xr = xobj;
int f(){ return 0; }
int (&fr)() = f;

int A::*mpg  = &A::aa;
int X::*mpgx = &X::a;

#include <stdio.h>
int main(){
  int A::*   mp   = &A::aa;
  int A::* (*mpp) = &mp;
  int A::* (&mpr) = mp;
  int X::*   mpx  = &X::a;
  A aobj;
  xobj.a  = 1;
  aobj.aa = 1;
  aobj.*mp = 2;
  xobj.*mpx = 2;

  puts("ok");
};
