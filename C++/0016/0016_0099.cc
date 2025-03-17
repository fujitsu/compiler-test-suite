class A {  
 int a;
 void func(){};
 };
template <class T > class B {
  T x;
};
class B<int> obj1;
class B<char> obj2;    

template <class T,int I> class C {
   T x[I];
};
class C<int,10> obj3; 
class C<int,20> obj4; 
class C<char,10> obj5; 




#include <stdio.h>
int main(){
  puts("ok");
}
