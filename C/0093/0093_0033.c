#include <stdio.h>

int sub0(int i){
 return(i*i);
}
int sub1(int i){
 return(i+i);
}
int main( ) {
 long long int aaa,bbb,ccc;
 long long int j,subbb0( ),subbb1( );
 int a,b,c,i;
        i=10;b=sub0(i);c=sub1(i);
 a=b==c;
        if (a) printf("** (01)** NG\n");
        else   printf("** (01)** OK\n");
 a=b!=c;
        if (a) printf("** (02)** OK\n");
        else   printf("** (02)** NG\n");
 a=b<=c;
        if (a) printf("** (03)** NG\n");
        else   printf("** (03)** OK\n");
 a=b>=c;
        if (a) printf("** (04)** OK\n");
        else   printf("** (04)** NG\n");
 a=b<c;
        if (a) printf("** (05)** NG\n");
        else   printf("** (05)** OK\n");
 a=b>c;
        if (a) printf("** (06)** OK\n");
        else   printf("** (06)** NG\n");

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

 a=0+0 ==c;
        if (a) printf("** (13)** NG\n");
        else   printf("** (13)** OK\n");
 a=0+0 !=c;
        if (a) printf("** (14)** OK\n");
        else   printf("** (14)** NG\n");
 a=0+0 <=c;
        if (a) printf("** (15)** OK\n");
        else   printf("** (15)** NG\n");
 a=0+0 >=c;
        if (a) printf("** (16)** NG\n");
        else   printf("** (16)** OK\n");
 a=0+0 < c;
        if (a) printf("** (17)** OK\n");
        else   printf("** (17)** NG\n");
 a=0+0 > c;
        if (a) printf("** (18)** NG\n");
        else   printf("** (18)** OK\n");

 a=1+0==c;
        if (a) printf("** (19)** NG\n");
        else   printf("** (19)** OK\n");
 a=1+0!=c;
        if (a) printf("** (20)** OK\n");
        else   printf("** (20)** NG\n");
 a=1+0<=c;
        if (a) printf("** (21)** OK\n");
        else   printf("** (21)** NG\n");
 a=1+0>=c;
        if (a) printf("** (22)** NG\n");
        else   printf("** (22)** OK\n");
 a=1+0< c;
        if (a) printf("** (23)** OK\n");
        else   printf("** (23)** NG\n");
 a=1+0> c;
        if (a) printf("** (24)** NG\n");
        else   printf("** (24)** OK\n");

 a=sub0==sub1;
        if (a) printf("** (25)** NG\n");
        else   printf("** (25)** OK\n");
 a=sub0!=sub1;
        if (a) printf("** (26)** OK\n");
        else   printf("** (26)** NG\n");
 a=sub0<=sub1;
        if (a) printf("** (27)** OK\n");
        else   printf("** (27)** NG\n");
 a=sub0>=sub1;
        if (a) printf("** (28)** NG\n");
        else   printf("** (28)** OK\n");
 a=sub0<sub1;
        if (a) printf("** (29)** OK\n");
        else   printf("** (29)** NG\n");
 a=sub0>sub1;
        if (a) printf("** (30)** NG\n");
        else   printf("** (30)** OK\n");

        j=10;
        bbb=subbb0(j);ccc=subbb1(j);
 aaa=bbb==ccc;
        if (aaa) printf("** (01)** NG\n");
        else   printf("** (01)** OK\n");
 aaa=bbb!=ccc;
        if (aaa) printf("** (02)** OK\n");
        else   printf("** (02)** NG\n");
 aaa=bbb<=ccc;
        if (aaa) printf("** (03)** NG\n");
        else   printf("** (03)** OK\n");
 aaa=bbb>=ccc;
        if (aaa) printf("** (04)** OK\n");
        else   printf("** (04)** NG\n");
 aaa=bbb<ccc;
        if (aaa) printf("** (05)** NG\n");
        else   printf("** (05)** OK\n");
 aaa=bbb>ccc;
        if (aaa) printf("** (06)** OK\n");
        else   printf("** (06)** NG\n");

 aaa=bbb==100;
        if (aaa) printf("** (07)** OK\n");
        else   printf("** (07)** NG\n");
 aaa=bbb!=100;
        if (aaa) printf("** (08)** NG\n");
        else   printf("** (08)** OK\n");
 aaa=bbb<=100;
        if (aaa) printf("** (09)** OK\n");
        else   printf("** (09)** NG\n");
 aaa=bbb>=100;
        if (aaa) printf("** (10)** OK\n");
        else   printf("** (10)** NG\n");
 aaa=bbb< 100;
        if (aaa) printf("** (11)** NG\n");
        else   printf("** (11)** OK\n");
 aaa=bbb> 100;
        if (aaa) printf("** (12)** NG\n");
        else   printf("** (12)** OK\n");

 aaa=0+0 ==ccc;
        if (aaa) printf("** (13)** NG\n");
        else   printf("** (13)** OK\n");
 aaa=0+0 !=ccc;
        if (aaa) printf("** (14)** OK\n");
        else   printf("** (14)** NG\n");
 aaa=0+0 <=ccc;
        if (aaa) printf("** (15)** OK\n");
        else   printf("** (15)** NG\n");
 aaa=0+0 >=ccc;
        if (aaa) printf("** (16)** NG\n");
        else   printf("** (16)** OK\n");
 aaa=0+0 < ccc;
        if (aaa) printf("** (17)** OK\n");
        else   printf("** (17)** NG\n");
 aaa=0+0 > ccc;
        if (aaa) printf("** (18)** NG\n");
        else   printf("** (18)** OK\n");

 aaa=1+0==ccc;
        if (aaa) printf("** (19)** NG\n");
        else   printf("** (19)** OK\n");
 aaa=1+0!=ccc;
        if (aaa) printf("** (20)** OK\n");
        else   printf("** (20)** NG\n");
 aaa=1+0<=ccc;
        if (aaa) printf("** (21)** OK\n");
        else   printf("** (21)** NG\n");
 aaa=1+0>=ccc;
        if (aaa) printf("** (22)** NG\n");
        else   printf("** (22)** OK\n");
 aaa=1+0< ccc;
        if (aaa) printf("** (23)** OK\n");
        else   printf("** (23)** NG\n");
 aaa=1+0> ccc;
        if (aaa) printf("** (24)** NG\n");
        else   printf("** (24)** OK\n");

 aaa=subbb0==subbb1;
        if (aaa) printf("** (25)** NG\n");
        else   printf("** (25)** OK\n");
 aaa=subbb0!=subbb1;
        if (aaa) printf("** (26)** OK\n");
        else   printf("** (26)** NG\n");
 aaa=subbb0<=subbb1;
        if (aaa) printf("** (27)** OK\n");
        else   printf("** (27)** NG\n");
 aaa=subbb0>=subbb1;
        if (aaa) printf("** (28)** NG\n");
        else   printf("** (28)** OK\n");
 aaa=subbb0<subbb1;
        if (aaa) printf("** (29)** OK\n");
        else   printf("** (29)** NG\n");
 aaa=subbb0>subbb1;
        if (aaa) printf("** (30)** NG\n");
        else   printf("** (30)** OK\n");
}
long long int subbb0(i) long long int i;{
 return(i*i);
}
long long int subbb1(i) long long int i;{
 return(i+i);
}
