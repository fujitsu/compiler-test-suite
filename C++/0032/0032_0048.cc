#include <stdio.h>
enum { MEMBER1=1,MEMBER2,GLOBAL1,GLOBAL2};



template <class T>
class A {
 public:
 T x;
  T f(A<T>&a1){  return (T)MEMBER1;};
  T f(A<T>&a2,A<T>&a3){ return (T)MEMBER2;};
};



template <class T>
T f(A<T>&a2){ return (T)GLOBAL1;}

template <class T>
T f(A<T>&a2,A<T>&a3){ return (T)GLOBAL2;}


char (*fp1)(A<char>&) = &f;
double (*fp2)(A<double>&,A<double>&) = &f;

char (A<char>::*fp3)(A<char>&) = &A<char>::f;
double (A<double>::*fp4)(A<double>&,A<double>&) = &A<double>::f;

template <class T>
class B {
 public:
 T (A<T>::*fp3)(A<T>&);
 T (A<T>::*fp4)(A<T>&,A<T>&);
 B(){fp3 =&A<T>::f; 
     fp4 =&A<T>::f; 
 }


};


B<int> bobj;
A<int> aiobj;

int main(){
 A<char> cobj;
 A<double> dobj;


  if ( (  (*fp1)(cobj)== GLOBAL1)
    && ( (*fp2)(dobj,dobj) == GLOBAL2)
    && ( (cobj.*fp3)(cobj) == MEMBER1 )
    && (  (dobj.*fp4)(dobj,dobj) == MEMBER2 )
    && (  (aiobj.*(bobj.fp3))(aiobj) == MEMBER1 )
    && (  (aiobj.*(bobj.fp4))(aiobj,aiobj) == MEMBER2 )){ 
      printf("ok\n");
    } else {
      printf("ng\n");
    }

}




