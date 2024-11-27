#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

long int  sub1(unsigned char     uch,  unsigned short int     usi,
               unsigned long int uli,  unsigned long long int ull);
long int  sub2(signed char       sch,  signed short int       ssi,
               signed long int   sli,  signed long long int   sll);
float     sub3(float   fl,     double  dl,    long double   ld);
void      sub41(signed char      sch[],  float        fla[],
                signed long long int slla[], long double  lda[]);
float     sub42(signed char      sch[],  float        fla[],
                signed long long int slla[], long double  lda[]);
int main()
{
    unsigned char          uch1;
    unsigned short int     usi1;
    unsigned long int      uli1;
    unsigned long long int ull1;
    signed char            sch1;
    signed short int       ssi1;
    signed long int        sli1;
    signed long long int   sll1;
    float                  fl1;
    double                 dl1;
    long double            ld1;
    signed char            scha1 [10];
    float                  fla1 [10];
    signed long long int   slla1 [10];
    long double            lda1 [10];
    long int  cal1, cal2, ans1=16,    ans2=20;
    float     cal3, cal4, ans3=64.0,  ans4=550.0;

    printf("---- scpa006 start ---- \n");


    uch1 = 1;              sch1 = uch1 + 1;
    usi1 = sch1 + 1;       ssi1 = usi1 + 1;
    uli1 = ssi1 + 1;       sli1 = uli1 + 1;
    ull1 = sli1 + 1;       sll1 = ull1 + 1;

    cal1 = sub1(uch1, usi1, uli1, ull1);
    cal2 = sub2(sch1, ssi1, sli1, sll1);

    if (cal1 == ans1)
        printf ("   1: ***  ok  *** \n");
    else {
        printf ("   1: ???  ng  ??? \n");
        printf ("       ans = %d\n", ans1);
        printf ("       cal = %d\n", cal1);
    }
    if (cal2 == ans2)
        printf ("   2: ***  ok  *** \n");
    else {
        printf ("   2: ???  ng  ??? \n");
        printf ("       ans = %d\n", ans2);
        printf ("       cal = %d\n", cal2);
    }

    fl1  = -2.0;           dl1  = fl1  * (-2.0);
    ld1  = dl1 * (-2.0);

    cal3 = sub3(fl1,  dl1,  ld1);

    if (cal3 == ans3)
        printf ("   3: ***  ok  *** \n");
    else {
        printf ("   3: ???  ng  ??? \n");
        printf ("       ans = %e\n", ans3);
        printf ("       cal = %e\n", cal3);
    }

   sub41(scha1, fla1, slla1, lda1);
    cal4 = sub42(scha1, fla1, slla1, lda1);

    if (cal4 == ans4)
        printf ("   4: ***  ok  *** \n");
    else {
        printf ("   4: ???  ng  ??? \n");
        printf ("       ans = %e\n", ans4);
        printf ("       cal = %e\n", cal4);
    }

    printf("---- scpa006  end  ---- \n");
exit (0);
}

long int sub1(
unsigned char           puch1,
unsigned short int      pusi1,
unsigned long int       puli1,
unsigned long long int  pull1)
{
    return (long int)(puch1+pusi1+puli1+pull1);
}
long int sub2(
signed char           psch1,
signed short int      pssi1,
signed long int       psli1,
signed long long int  psll1)
{
    return (long int)(psch1+pssi1+psli1+psll1);
}
float sub3(
float         pfl1,
double        pdl1,
long double   pld1)
{
    return (float)(pfl1*pdl1*pld1);
}
void sub41(
signed char           pcha1[],
float                 pfla1[],
signed long long int  pslla1[],
long double           plda1[])
{
    long   int i;
    for (i=0; i<10; i++) {
        pcha1 [i] = (i+1);
        pfla1 [i] = (i+1)*2.0;
        pslla1[i] = (i+1)*3;
        plda1 [i] = (i+1)*4.0;
    }
}
float sub42(
signed char           pcha1[],
float                 pfla1[],
signed long long int  pslla1[],
long double           plda1[])
{
    long int i;
    float    sum=0.0;
    for (i=0; i<10; i++) {
        sum += pcha1 [i];
        sum += pfla1 [i];
        sum += pslla1[i];
        sum += plda1 [i];
    }
    return sum;
}
