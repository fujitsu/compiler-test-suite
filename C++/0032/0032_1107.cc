#include <stdio.h>

template < class T1, class T2>
class A{
public:
  T1 i;
  T2 d;
  A();
  operator T2();
  operator int();
};

template <class T1, class T2>  
A<T1,T2>::A():d(3.0),i(1){  }

template <class T1, class T2>  
A<T1,T2>::operator T2(){ return d;}

template <class T1, class T2>  
A<T1,T2>::operator int(){ return i;}

int main(){


 A<int,double> aobj;

 if ( double(aobj) ==3.000000 && int(aobj) == 1){
   printf ("ok\n");
 } else {
   printf("value of aobj3.d = %f\n",double(aobj));
   printf("value of aobj3.i = %d\n",int(aobj));
 }
}
