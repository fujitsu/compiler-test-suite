#include <stdio.h>
template < class T1, class T2>
class A{
public:
  static T1 a;
};

template<> int A<int,int>::a =10;

int main(){
if (A<int,int>::a == 10) { printf("ok\n");} else {printf("ng\n");};

}
