#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

#define      num      2

struct tag1 {
    signed char            t1_sch1 :1;
    unsigned char          t1_uch1 :1;
    signed short int       t1_ssi1 :1;
    unsigned short int     t1_usi1 :1;
    signed long int        t1_sli1 :1;
    unsigned long int      t1_uli1 :1;
};
struct tag2 {
    signed char             t2_ch1 : 1;
    signed char             t2_ch2 : 3;
    signed char             t2_ch3 : 5;
    signed short int        t2_si1 : 1;
    signed short int        t2_si2 : 6;
    signed short int        t2_si3 :10;
    signed long int         t2_li1 : 1;
    signed long int         t2_li2 :12;
    signed long int         t2_li3 :20;
};

long int       cal[num], ans[num] = {  0, 3 };
int main()
{
    struct tag1            t1_st1;
    struct tag2            t2_st1;
    int                    i;

    printf("---- scpa014 start ---- \n");

    t1_st1.t1_sch1 = 1;      t1_st1.t1_uch1 = 1;
    t1_st1.t1_ssi1 = 1;      t1_st1.t1_usi1 = 1;
    t1_st1.t1_sli1 = 1;      t1_st1.t1_uli1 = 1;

    cal[0] = t1_st1.t1_sch1 + t1_st1.t1_uch1 +
               t1_st1.t1_ssi1 + t1_st1.t1_usi1 +
               t1_st1.t1_sli1 + t1_st1.t1_uli1 ;

    t2_st1.t2_ch1 = 1;     t2_st1.t2_li1 = 1;
    t2_st1.t2_ch2 = 1;     t2_st1.t2_li2 = 1;
    t2_st1.t2_ch3 = 1;     t2_st1.t2_li3 = 1;
    t2_st1.t2_si1 = 1;  
    t2_st1.t2_si2 = 1;  
    t2_st1.t2_si3 = 1;  

    cal[1] = t2_st1.t2_ch1 + t2_st1.t2_li1 +
               t2_st1.t2_ch2 + t2_st1.t2_li2 +
               t2_st1.t2_ch3 + t2_st1.t2_li3 +
               t2_st1.t2_si1  +
               t2_st1.t2_si2  +
               t2_st1.t2_si3 ;

    for (i=0; i<num; i++) {
        if (cal[i] == ans[i])
            printf ("  %d: ***  ok  *** \n", i+1);
        else {
            printf ("  %d: ???  ng  ??? \n", i+1);
            printf ("       ans = %d\n", ans[i]);
            printf ("       cal = %d\n", cal[i]);
        }
    }

    printf("---- scpa014  end  ---- \n");
exit (0);
}
