#include <stdio.h>
enum { MEMBER1=1,MEMBER2,GLOBAL1,GLOBAL2};
template <class T>
class A {
 public:
 T x;
 T f(A<T>&a1){  return (T)MEMBER1;};
 T f(A<T>&a2,A<T>&a3){  return (T)MEMBER2;};
};



template <class T>
T f(A<T>&a2){return (T)GLOBAL1;}

template <class T>
T f(A<T>&a2,A<T>&a3){return (T)GLOBAL2;}

A<char> cobj;
A<int> cobj2;
int main(){
  if ( ( f(cobj) == GLOBAL1)
    && ( f(cobj,cobj) == GLOBAL2)
    && (  cobj.f(cobj) == MEMBER1 )
    && (  cobj.f(cobj,cobj) == MEMBER2 )
    && ( f(cobj2) == GLOBAL1)
    && ( f(cobj2,cobj2) == GLOBAL2)
    && (  cobj2.f(cobj2) == MEMBER1 )
    && (  cobj2.f(cobj2,cobj2) == MEMBER2 )){ 
      printf("ok\n");
    } else {
      printf("ng\n");
    }

}




