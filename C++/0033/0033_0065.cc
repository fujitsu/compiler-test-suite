#include <stdio.h>
#include <string.h>
char c[7]="okokok";
char work[50]=" ";
int main()
 {
   int  d='v',e='i',i,n;

#pragma omp parallel
   for(i=0;i< 5;i++){
#pragma omp parallel
     memset(work,d,i);
     n=++i;
#pragma omp parallel
     memset(work,e,n);
   }

   printf("%s\n",c) ;
 }

