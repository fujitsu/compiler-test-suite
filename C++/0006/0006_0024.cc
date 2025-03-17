#include <stdio.h>
#include <stdarg.h>

class Class {
public:
Class(int num, ...)
{
  long long int i;
  int x[10],y[10];
  int flag;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;

 
  flag=0; 
  for(i=0;i<10;i++){
    y[i]=i;
  }

  #pragma omp parallel
  {
    #pragma omp for schedule(dynamic)
    for(i=0;i<10;i++){
      x[i]=i;
    }
  }

  for(i=0;i<10;i++){
    if( x[i] != y[i] ){
      flag = 1;
      break;
    }
  }
 
  if( flag == 0 ){
    printf("OK\n");
  }else{
    printf("NG\n");
  } 
}
};
int main() {
  Class O(3, 2, 3, 4);
}
