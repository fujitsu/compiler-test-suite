#include <stdio.h>
template < class T>
class A{
  public:
   static T a;
};

template<> int A<int>::a =5;

int main(){
 if (A<int>::a == 5){ printf("ok\n");} else {printf("ng\n");}
}
