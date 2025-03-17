#include <stdio.h>
#include <stdarg.h>


#define ARRAY_SIZE 20

class Class {
public:
Class(int num, ...)
{
  int a00, a01, a02, a03, a04, a05, a06, a07, a08, a09,
      a10, a11, a12, a13, a14, a15, a16, a17, a18, a19;
  int a[21];
  int i;
  int result1=0, result2=0, result3=0;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


  #pragma omp parallel sections shared(a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19)
  {
    #pragma omp section
     { a00= 1; }
    #pragma omp section
     { a01= 2; }
    #pragma omp section
     { a02= 3; }
    #pragma omp section
     { a03= 4; }
    #pragma omp section
     { a04= 5; }
    #pragma omp section
     { a05= 6; }
    #pragma omp section
     { a06= 7; }
    #pragma omp section
     { a07= 8; }
    #pragma omp section
     { a08= 9; }
    #pragma omp section
     { a09=10; }
    #pragma omp section
     { a10=11; }
    #pragma omp section
     { a11=12; }
    #pragma omp section
     { a12=13; }
    #pragma omp section
     { a13=14; }
    #pragma omp section
     { a14=15; }
    #pragma omp section
     { a15=16; }
    #pragma omp section
     { a16=17; }
    #pragma omp section
     { a17=18; }
    #pragma omp section
     { a18=19; }
    #pragma omp section
     { a19=20; }
  }

  #pragma omp parallel
  {
    #pragma omp single
      { a[a00-1]=a00; }
    #pragma omp single
      { a[a01-1]=a01; }
    #pragma omp single
      { a[a02-1]=a02; }
    #pragma omp single
      { a[a03-1]=a03; }
    #pragma omp single
      { a[a04-1]=a04; }
    #pragma omp single
      { a[a05-1]=a05; }
    #pragma omp single
      { a[a06-1]=a06; }
    #pragma omp single
      { a[a07-1]=a07; }
    #pragma omp single
      { a[a08-1]=a08; }
    #pragma omp single
      { a[a09-1]=a09; }
    #pragma omp single
      { a[a10-1]=a10; }
    #pragma omp single
      { a[a11-1]=a11; }
    #pragma omp single
      { a[a12-1]=a12; }
    #pragma omp single
      { a[a13-1]=a13; }
    #pragma omp single
      { a[a14-1]=a14; }
    #pragma omp single
      { a[a15-1]=a15; }
    #pragma omp single
      { a[a16-1]=a16; }
    #pragma omp single
      { a[a17-1]=a17; }
    #pragma omp single
      { a[a18-1]=a18; }
    #pragma omp single
      { a[a19-1]=a19; }
  }


  #pragma omp parallel
  {
    #pragma omp master
      { result1+=a[a00-1]; }
    #pragma omp master
      { result1+=a[a01-1]; }
    #pragma omp master
      { result1+=a[a02-1]; }
    #pragma omp master
      { result1+=a[a03-1]; }
    #pragma omp master
      { result1+=a[a04-1]; }
    #pragma omp master
      { result1+=a[a05-1]; }
    #pragma omp master
      { result1+=a[a06-1]; }
    #pragma omp master
      { result1+=a[a07-1]; }
    #pragma omp master
      { result1+=a[a08-1]; }
    #pragma omp master
      { result1+=a[a09-1]; }
    #pragma omp master
      { result1+=a[a10-1]; }
    #pragma omp master
      { result1+=a[a11-1]; }
    #pragma omp master
      { result1+=a[a12-1]; }
    #pragma omp master
      { result1+=a[a13-1]; }
    #pragma omp master
      { result1+=a[a14-1]; }
    #pragma omp master
      { result1+=a[a15-1]; }
    #pragma omp master
      { result1+=a[a16-1]; }
    #pragma omp master
      { result1+=a[a17-1]; }
    #pragma omp master
      { result1+=a[a18-1]; }
    #pragma omp master
      { result1+=a[a19-1]; }
  }

  #pragma omp parallel for reduction(+:result2)
    for(i=0; i<ARRAY_SIZE; i++) {
      result2+=a[i];
    }

  result3=ARRAY_SIZE*ARRAY_SIZE-(ARRAY_SIZE*(ARRAY_SIZE-1))/2;

  printf( "-----");
  printf( " parallel sections -----\n");
  if( result1 == 210 && result2 == 210 && result3 == 210 &&
      a[19]   == 20  && a19     == 20){
    printf( "OK\n");
  } else {
    printf( "NG!  SECTIONS clause is not active\n");
    printf("a19=%d\n",a19);
    printf("a[19]=%d\n",a[19]);
    printf("result1=%d\n", result1);
    printf("result2=%d\n", result2);
    printf("result3=%d\n", result3);
  }
      
}
};
int main() {
  Class O(2, 2, 2);
}

