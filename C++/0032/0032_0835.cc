#include <stdio.h>

template <class T> 
class X{ public: T i; int f(){ i=1;return i;}};

int main() { int i=3; X<int> aobj;
  if ( ((aobj.f()) == 1) && i ==3 ){ printf("ok\n");}
   else { printf("ng\n");}
 }
