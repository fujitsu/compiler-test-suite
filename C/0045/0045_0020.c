

#include <stdio.h>

int a[1000];
int main()
{
   int i;
   i = 0;
#pragma omp parallel for
   while(i<1000) a[i++]= 0;


   puts("PASS");
}

