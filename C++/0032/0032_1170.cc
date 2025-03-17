#include <stdio.h>
int count = 0;

template < class T1, class T2>
class A{
public:
  T1 i;
  A(){ count++;}
  void f();
};

template < class T1, class T2>
void A<T1,T2>::f(){
  class A {
  public:
    T1 ii; 
    A(){  count++;}
  };
  A aobj;

}

int main(){

 A<int,int> aobj;
 aobj.f();
 if (count ==2 ){ printf("ok\n");} else {printf("ng\n");};
}
