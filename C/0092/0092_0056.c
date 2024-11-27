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
        if (a) printf("** (01)** OK\n");
        else   printf("** (01)** NG\n");
 a=b!=c;
        if (a) printf("** (02)** NG\n");
        else   printf("** (02)** OK\n");
 a=b<=c;
        if (a) printf("** (03)** OK\n");
        else   printf("** (03)** NG\n");
 a=b>=c;
        if (a) printf("** (04)** OK\n");
        else   printf("** (04)** NG\n");
 a=b<c;
        if (a) printf("** (05)** NG\n");
        else   printf("** (05)** OK\n");
 a=b>c;
        if (a) printf("** (06)** NG\n");
        else   printf("** (06)** OK\n");

 a=b==100;
        if (a) printf("** (07)** OK\n");
        else   printf("** (07)** NG\n");
 a=b!=100;
        if (a) printf("** (08)** NG\n");
        else   printf("** (08)** OK\n");
 a=b<=100;
        if (a) printf("** (09)** OK\n");
        else   printf("** (09)** NG\n");
 a=b>=100;
        if (a) printf("** (10)** OK\n");
        else   printf("** (10)** NG\n");
 a=b< 100;
        if (a) printf("** (11)** NG\n");
        else   printf("** (11)** OK\n");
 a=b> 100;
        if (a) printf("** (12)** NG\n");
        else   printf("** (12)** OK\n");

 a=50+50 ==c;
        if (a) printf("** (13)** OK\n");
        else   printf("** (13)** NG\n");
 a=50+50 !=c;
        if (a) printf("** (14)** NG\n");
        else   printf("** (14)** OK\n");
 a=50+50 <=c;
        if (a) printf("** (15)** OK\n");
        else   printf("** (15)** NG\n");
 a=50+50 >=c;
        if (a) printf("** (16)** OK\n");
        else   printf("** (16)** NG\n");
 a=50+50 < c;
        if (a) printf("** (17)** NG\n");
        else   printf("** (17)** OK\n");
 a=50+50 > c;
        if (a) printf("** (18)** NG\n");
        else   printf("** (18)** OK\n");
}
