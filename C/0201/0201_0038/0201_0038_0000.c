#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

extern int i[100];
#pragma omp threadprivate(i)



void sub(int i);
int main()
{
  int n;
  for(n=0;n<100;n++) i[n] = 10;
  
  sub(1);
}
