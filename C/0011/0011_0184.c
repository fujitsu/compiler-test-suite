#include <stdlib.h>
#include  <stdio.h>
#include <time.h>

 long int a[100];
int main() {
   static int b[100]={1,2,3,4,5,6,7,8,9,10,
                         11,12,13,14,15,16,17,18,19,20,
                         21,22,23,24,25,26,27,28,29,30,
                         31,32,33,34,35,36,37,38,39,40,
                         41,42,43,44,45,46,47,48,49,50,
                         51,52,53,54,55,56,57,58,59,60,
                         61,62,63,64,65,66,67,68,69,70,
                         71,72,73,74,75,76,77,78,79,80,
                         81,82,83,84,85,86,87,88,89,90,
                         91,92,93,94,95,96,97,98,99,100};
   int c,d,fun(int b);
     d=clock();
     d=0;
     for(c=0;c<100;c++) {
       a[c]=fun(b[c]);
       if(a[c]!=b[c]) {
         printf(" ****** TEST NG   no.1 ******  \n");
         exit(1);
       }
     }
     printf(" ****** TEST OK   ****** \n");
     d=clock();
 }
 int fun(int b)
 {
   int c,d;
     for(c=0;c<100;c++) {
       if(b==c)
         break;
     }
     for(d=0;d<100;d++) {
       if(a[d]==0)
         break;
     }
     d++;
       if(c!=d) {
         printf(" ****** TEST NG   no.2 ****** \n");
         exit(1);
       }
     return(c);
 }
