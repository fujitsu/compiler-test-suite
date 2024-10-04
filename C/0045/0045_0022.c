

#include <stdio.h>

int a[1000];
int main()
{
   int i;
#pragma omp parallel for
   for(i=0;i<1000;i++) a[i]= 0;


   puts("PASS");
}

