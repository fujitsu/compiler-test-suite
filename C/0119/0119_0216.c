#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
struct t1{
     unsigned char as:2;
} *p,xp;
struct t2{
     unsigned char bs:8;
} *p1,xp1;
struct t3{
     signed char cs:2;
} *p2,xp2;
struct t4{
     signed char ds:8;
} *p3,xp3;
struct t5{
     unsigned short int es:2;
     unsigned short int fs:14;
} *q,xq;
struct t6{
     signed short int gs:2;
     signed short int hs:14;
} *q1,xq1;
struct t7{
     unsigned  int is:2;
     unsigned  int js:30;
} *r,xr;
struct t8{
     signed int ks:2;
     signed int ls:30;
} *s,xs;
int main()
{
    unsigned int        u41,u42;
             int        i41,i42;
    unsigned short int  u21,u22;
             short int  i21;
    unsigned char       u11,u12;
             char       i11,i12,i13;

    p=&xp;
    s=&xs;
    p1=&xp1;
    p2=&xp2;
    p3=&xp3;
    q=&xq;
    q1=&xq1;
    r=&xr;




    i11 = p3->ds;    
    i12 = q1->hs;    
    u11 = q->fs;     
    u21 = r->js;    

    u41 = p2->cs;   
    i41 = s->ks;     
    u42 = q->es;     
    u22 = r->is;    

    printf(" all bit test ok\n");
exit (0);
}
