#include <stdio.h>

template <class T>
class A { public:   static int j4;};
int  num=3;

template <class T>  int A<T>::j4=num;

template<> int A<int>::j4=num;
int main(){
  int work = 0;
#pragma omp parallel
  if (A<int>::j4 != 3) work++;

  if ( !work )
    printf("ok\n");
  else
    printf("ng\n");

  return 0;
}
