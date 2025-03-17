template<class T> class TAG {
  T func(){ return (T)0; } 
  T func2(){ return (T)0; } 
};

struct SG {
  int aa;
  TAG<int> x; 
}sgobj;

template<class T> class TAG1 {
  T func();
  T func2();
};
template <class T> T TAG1<T>::func(){ return (T)0;}
template <class T> T TAG1<T>::func2(){ return (T)0;}

template<class T> class TAG2{
 public:
  struct  TSG {
    int bb;
    void func(){}
  }tsgobj;
};

template<class T , class T1>  class TAG3 {
 public:
   T a1;
   T1 b1;
   template <class T2, int i> class TAG31 {
     T2  a2;
   public:
     T func(){ return (T)0; } 
     T1 b2[i];
     template <class T3, int ii> class TAG32{
     public:
         T func2(){ return (T)0; } 
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
  TAG<char> tc[1];
  TAG<unsigned int> tsi[1][2];

  TAG1<signed short> tss[1];
  TAG1<float> tf[1][2];

  TAG2<long>::TSG obj[1];
  TAG2<bool>::TSG obj2[1][2];

  TAG3<int ,short> y1[1];
  TAG3<char,char>::TAG31<int,10> y2[1][2];
  TAG3<float,double>::TAG31<char,100>::TAG32<int,10> y3[1][2][3]; 
  int a=0;

  puts("ok");
}
