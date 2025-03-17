template<class T> class TAG {
  T (*func)();
  T (*func2)();
};

struct SG {
  int aa;
  TAG<int> x; 
}sgobj;

template<class T> class TAG1 {
  T (*func)();
  T (*func2)();
};

template<class T> class TAG2{
 public:
  struct  TSG {
    int bb;
    void (*func)();
  };
};

template<class T , class T1>  class TAG3 {
 public:
   T a1;
   T1 b1;
   template <class T2, int i> class TAG31 {
     T2  a2;
   public:
     T (*func)();
     T1 b2[i];
     template <class T3, int ii> class TAG32{
     public:
         T (*func2)();
         T a3;
         T3 b3[ii][i]; 
     };
   };
}; 

void f1(){
}

#include <stdio.h>
int main()
{
  TAG<char> tc0, *tc = &tc0;
  TAG<unsigned int> tsi0, *tsi1 = &tsi0, **tsi = &tsi1;

  TAG1<signed short> tss0, *tss = &tss0;
  TAG1<float> tf0, *tf1 = &tf0, **tf = &tf1;

  TAG2<long>::TSG obj0, *obj = &obj0;
  TAG2<bool>::TSG obj20, *obj21 = &obj20, **obj2 = &obj21;

  TAG3<int ,short> xx0, *xx = &xx0;
  TAG3<char,char>::TAG31<int,10> y0, *y1 = &y0, **y = &y1;
  TAG3<float,double>::TAG31<char,100>::TAG32<int,10> z0, *z1 = &z0, **z2 = &z1, ***z = &z2; 

  puts("ok");
}
