#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub0(int i){
 return(i*i);
}
int sub1(int i){
 return(i*i);
}
int main( ) {
 int a,b,c,i;
        i=10;b=sub0(i);c=sub1(i);
 if (b==c)
              printf("** dpmk2029-(01)** OK\n");
        else   printf("** dpmk2029-(01)** NG\n");
 if (b!=c)
              printf("** dpmk2029-(02)** NG\n");
        else   printf("** dpmk2029-(02)** OK\n");
 if (b<=c)
              printf("** dpmk2029-(03)** OK\n");
        else   printf("** dpmk2029-(03)** NG\n");
 if (b>=c)
              printf("** dpmk2029-(04)** OK\n");
        else   printf("** dpmk2029-(04)** NG\n");
 if (b<c)
              printf("** dpmk2029-(05)** NG\n");
        else   printf("** dpmk2029-(05)** OK\n");
 if (b>c)
              printf("** dpmk2029-(06)** NG\n");
        else   printf("** dpmk2029-(06)** OK\n");
 if (b==100)
              printf("** dpmk2029-(07)** OK\n");
        else   printf("** dpmk2029-(07)** NG\n");
 if (b!=100)
              printf("** dpmk2029-(08)** NG\n");
        else   printf("** dpmk2029-(08)** OK\n");
 if (b<=100)
              printf("** dpmk2029-(09)** OK\n");
        else   printf("** dpmk2029-(09)** NG\n");
 if (b>=100)
              printf("** dpmk2029-(10)** OK\n");
        else   printf("** dpmk2029-(10)** NG\n");
 if (b< 100)
              printf("** dpmk2029-(11)** NG\n");
        else   printf("** dpmk2029-(11)** OK\n");
 if (b> 100)
              printf("** dpmk2029-(12)** NG\n");
        else   printf("** dpmk2029-(12)** OK\n");
 if (50+50 ==c)
              printf("** dpmk2029-(13)** OK\n");
        else   printf("** dpmk2029-(13)** NG\n");
 if (50+50 !=c)
              printf("** dpmk2029-(14)** NG\n");
        else   printf("** dpmk2029-(14)** OK\n");
 if (50+50 <=c)
              printf("** dpmk2029-(15)** OK\n");
        else   printf("** dpmk2029-(15)** NG\n");
 if (50+50 >=c)
              printf("** dpmk2029-(16)** OK\n");
        else   printf("** dpmk2029-(16)** NG\n");
 if (50+50 < c)
              printf("** dpmk2029-(17)** NG\n");
        else   printf("** dpmk2029-(17)** OK\n");
 if (50+50 > c)
              printf("** dpmk2029-(18)** NG\n");
        else   printf("** dpmk2029-(18)** OK\n");
exit (0);
}
