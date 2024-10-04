#include <stdio.h>

void subi8()
{
  long i;
  double a[10];
#pragma omp parallel
  {
#pragma omp for
    for(i=0;i<10;i++){
      a[i]=i*2.5;
    }
  }
  printf("pass subi8\n");
}

void subi4()
{
  int i;
  double a[10];
#pragma omp parallel
  {
#pragma omp for
    for(i=0;i<10;i++){
      a[i]=i*2.5;
    }
  }
printf("pass subi4\n");
}

void subi2()
{
  short i;
  double a[10];
#pragma omp parallel
  {
#pragma omp for
    for(i=0;i<10;i++){
      a[i]=i*2.5;
    }
  }
printf("pass subi2\n");
}

void subi1()
{
  char i;
  double a[10];
#pragma omp parallel
  {
#pragma omp for
    for(i=0;i<10;i++){
      a[i]=i*2.5;
    }
  }
  printf("pass subi1\n");
}
int main()
{
  subi8();
  subi4();
  subi2();
  subi1();
}
