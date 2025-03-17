template<class T> class TAG {
 public:
  T func();
  T func2();
};
template <class T> T TAG<T>::func(){ return (T)0; } 
template <class T> T TAG<T>::func2(){ return (T)0; } 

struct SG {
  int aa;
  TAG<int> x; 
}sgobj;

template<class T> class TAG1 {
 public:
  T func();
  T func2();
};
template <class T> T TAG1<T>::func(){ return (T)0;}
template <class T> T TAG1<T>::func2(){ return (T)0;}

template<class T> class TAG2{
 public:
  struct  TSG {
    int bb;
    T func();
  }tsgobj;
};
template <class T> T TAG2<T>::TSG::func(){ return (T)0; }

template<class T , class T1>  class TAG3 {
 public:
   T a1;
   T1 b1;
   template <class T2, int i> class TAG31 {
     T2  a2;
    public:
     T func();
     T1 b2[i];
     template <class T3, int ii> class TAG32{
      public:
         T func2();
         T a3;
         T3 b3[ii][i]; 
     };
   };
}; 
template <class T , class T1> template<class T2, int i> T TAG3<T,T1>::TAG31<T2,i>::func(){ return (T)0; }
template <class T , class T1> template<class T2, int i> template<class T3, int ii> T TAG3<T,T1>::TAG31<T2,i>::TAG32<T3,ii>::func2(){ return (T)0; }

void f1(){
}

#include <stdio.h>
int main()
{
  sgobj.x.func();
  sgobj.x.func2();

  TAG<char> tc;
  tc.func();
  tc.func2();
  TAG<unsigned int> tsi;
  tsi.func();
  tsi.func2();

  TAG1<signed short> tss;
  tss.func();
  tss.func2();
  TAG1<float> tf;
  tf.func();
  tf.func2();

  TAG2<long>::TSG obj;
  obj.func();
  TAG2<bool>::TSG obj2;
  obj2.func();
  
  TAG3<char,bool>::TAG31<int,10> y1;
  y1.func();  
  TAG3<float,double>::TAG31<char,100>::TAG32<int,10> y2; 
  y2.func2();
  int a=0;

  puts("ok");
}
