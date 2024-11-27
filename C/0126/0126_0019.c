#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include <string.h>
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
#define DUAL(i) dual[i-1]
#define WORK(i) work[i-1]
#define DIFF(i) DIFF[i-1]
char a[50]="ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWX";
char b[50]="BCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXY";
char c[50]="OPTIMIZATION SECTION IDENTIFICATION DIVISION IRON ";
char work[50]=" ";
char dual[100]=" ";
char DIFF[50]=" ";
int main()
 {
   int  d='v',e='i',f='A',i,n;
   printf(" memcpy-section\n") ;
   for(i=0;i< 50;i+=1){
     memcpy(b,a,i);
   }
   for(i=1;i<=50;i++){
     printf("%c ",B(i));
     n=i%5;
     if(n==0) printf("\n");
   }
   printf("\n") ;
   printf(" memset-section\n") ;
   for(i=0;i< 25;i++){
     memset(work,d,i);
     n=++i;
     memset(work,e,n);
   }
   for(i=1;i<=50;i++){
     printf("%c ",C(i));
     n=i%10;
     if(n==0) printf("\n");
   }
   printf("\n") ;
   printf(" memmove-section\n") ;
   for(i=0;i< 50;i++){
     memmove(work,c,i);
   }
   for(i=1;i<=50;i++){
     printf("%c ",C(i));
     n=i%10;
     if(n==0) printf("\n");
   }
   printf("\n") ;
   printf(" strncmp-section\n") ;
   for(i=0;i< 50;i++){
     n = strncmp(c,a,i);
     if(n < 0){
        DIFF[i]='C';
      }
     else{
       if(n > 0){
         DIFF[i]='A';
       }
       else{
         DIFF[i]='H';
       }
     }
   }
   for(i=1;i<=50;i++){
     printf("%c ",DIFF(i));
     n=i%10;
     if(n==0) printf("\n");
   }
   printf("\n") ;
   printf(" strncat-section\n") ;
   for(i=0;i< 10;i++){
     strncat(dual,a,i);
   }
   for(i=1;i<=100;i++){
     printf("%c ",DUAL(i));
     n=i%20;
     if(n==0) printf("\n");
   }
   printf("\n") ;
exit (0);
 }
