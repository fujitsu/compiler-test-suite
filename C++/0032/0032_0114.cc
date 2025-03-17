

#include <stdio.h>
int zcount=0;
int xcount =0;
int zzcount=0;
int xxcount =0;

class Z {
 public:
 typedef int I;
 Z(){zcount++;}
};

template <class T>
class X {
 public:
 typedef float J;
 X(){xcount++;}
};

union ZZ {
 int x;
 double y;
 ZZ(){ zzcount++;}
};

template <class T>
union XX {
 int x;
 double y;
 XX(){xxcount++;}
};

template <class T, class T1>
class A {
   T a;
   T b;
   class X<T> c;
   X<T> d;

  
  
  
  
#if defined (__cplusplus) && __cplusplus >= 201103L
  Z::I e;
  X<Z>::J f;  
#else        
  T::I e;
  X<T>::J f;
#endif
  
   T1 g;
   T1  h;
   XX<T1> i;
   union XX<T1> j;
};


A<Z,ZZ> obj;


int main(){
  if (xcount == 2
   && zcount ==2
   && xxcount ==2
  && zzcount==2){ printf("ok\n");}else {printf("ng\n");}
  return 0;
}
