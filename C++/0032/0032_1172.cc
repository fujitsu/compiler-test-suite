#include <stdio.h>
int count=0;
template <class T>
class A  {
public:
   A(int i){count+=i;}

 };

A<int > aobj(1), aobj2(2);

int main(){
if ( count == 3){ printf("ok\n");} else {printf("ng\n");};

}
