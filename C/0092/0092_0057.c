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
              printf("** (01)** OK\n");
        else   printf("** (01)** NG\n");
 if (b!=c)
              printf("** (02)** NG\n");
        else   printf("** (02)** OK\n");
 if (b<=c)
              printf("** (03)** OK\n");
        else   printf("** (03)** NG\n");
 if (b>=c)
              printf("** (04)** OK\n");
        else   printf("** (04)** NG\n");
 if (b<c)
              printf("** (05)** NG\n");
        else   printf("** (05)** OK\n");
 if (b>c)
              printf("** (06)** NG\n");
        else   printf("** (06)** OK\n");

 if (b==100)
              printf("** (07)** OK\n");
        else   printf("** (07)** NG\n");
 if (b!=100)
              printf("** (08)** NG\n");
        else   printf("** (08)** OK\n");
 if (b<=100)
              printf("** (09)** OK\n");
        else   printf("** (09)** NG\n");
 if (b>=100)
              printf("** (10)** OK\n");
        else   printf("** (10)** NG\n");
 if (b< 100)
              printf("** (11)** NG\n");
        else   printf("** (11)** OK\n");
 if (b> 100)
              printf("** (12)** NG\n");
        else   printf("** (12)** OK\n");

 if (50+50 ==c)
              printf("** (13)** OK\n");
        else   printf("** (13)** NG\n");
 if (50+50 !=c)
              printf("** (14)** NG\n");
        else   printf("** (14)** OK\n");
 if (50+50 <=c)
              printf("** (15)** OK\n");
        else   printf("** (15)** NG\n");
 if (50+50 >=c)
              printf("** (16)** OK\n");
        else   printf("** (16)** NG\n");
 if (50+50 < c)
              printf("** (17)** NG\n");
        else   printf("** (17)** OK\n");
 if (50+50 > c)
              printf("** (18)** NG\n");
        else   printf("** (18)** OK\n");
}
