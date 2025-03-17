
#include <stdio.h>
#include <stdarg.h>

class subi8 {
public:
subi8(int num, ...)
{
  long i;
  double a[10];


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


#pragma omp parallel
  {
#pragma omp for
    for(i=0;i<10;i++){
      a[i]=i*2.5;
      a[i]=a[i];
    }
  }
  printf("pass subi8\n");
}
};
int main()
{
  subi8 o8(3, 1, 2, 3);
}
