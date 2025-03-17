#include <stdio.h>
template <class T> class A{};
template <class T>
class B{
  friend  class A<T>;
};


B<int> a;

int main(){
 printf("ok\n");
}
