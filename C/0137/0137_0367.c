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
 a=b==c;
        if (a) printf("** dpmk2028-(01)** OK\n");
        else   printf("** dpmk2028-(01)** NG\n");
 a=b!=c;
        if (a) printf("** dpmk2028-(02)** NG\n");
        else   printf("** dpmk2028-(02)** OK\n");
 a=b<=c;
        if (a) printf("** dpmk2028-(03)** OK\n");
        else   printf("** dpmk2028-(03)** NG\n");
 a=b>=c;
        if (a) printf("** dpmk2028-(04)** OK\n");
        else   printf("** dpmk2028-(04)** NG\n");
 a=b<c;
        if (a) printf("** dpmk2028-(05)** NG\n");
        else   printf("** dpmk2028-(05)** OK\n");
 a=b>c;
        if (a) printf("** dpmk2028-(06)** NG\n");
        else   printf("** dpmk2028-(06)** OK\n");
 a=b==100;
        if (a) printf("** dpmk2028-(07)** OK\n");
        else   printf("** dpmk2028-(07)** NG\n");
 a=b!=100;
        if (a) printf("** dpmk2028-(08)** NG\n");
        else   printf("** dpmk2028-(08)** OK\n");
 a=b<=100;
        if (a) printf("** dpmk2028-(09)** OK\n");
        else   printf("** dpmk2028-(09)** NG\n");
 a=b>=100;
        if (a) printf("** dpmk2028-(10)** OK\n");
        else   printf("** dpmk2028-(10)** NG\n");
 a=b< 100;
        if (a) printf("** dpmk2028-(11)** NG\n");
        else   printf("** dpmk2028-(11)** OK\n");
 a=b> 100;
        if (a) printf("** dpmk2028-(12)** NG\n");
        else   printf("** dpmk2028-(12)** OK\n");
 a=50+50 ==c;
        if (a) printf("** dpmk2028-(13)** OK\n");
        else   printf("** dpmk2028-(13)** NG\n");
 a=50+50 !=c;
        if (a) printf("** dpmk2028-(14)** NG\n");
        else   printf("** dpmk2028-(14)** OK\n");
 a=50+50 <=c;
        if (a) printf("** dpmk2028-(15)** OK\n");
        else   printf("** dpmk2028-(15)** NG\n");
 a=50+50 >=c;
        if (a) printf("** dpmk2028-(16)** OK\n");
        else   printf("** dpmk2028-(16)** NG\n");
 a=50+50 < c;
        if (a) printf("** dpmk2028-(17)** NG\n");
        else   printf("** dpmk2028-(17)** OK\n");
 a=50+50 > c;
        if (a) printf("** dpmk2028-(18)** NG\n");
        else   printf("** dpmk2028-(18)** OK\n");
exit (0);
}
