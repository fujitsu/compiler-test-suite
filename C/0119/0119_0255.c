#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

long int    sub1( signed char            sch1,
                  signed short int       ssh1,
                  signed long int        sli1,
                  signed long long int   sll1,
                  unsigned char          uch1,
                  unsigned short int     ush1,
                  unsigned long int      uli1,
                  unsigned long long int ull1,
                  float                  fl1,
                  double                 dl1,
                  long double            ld1 );
int main()
{
    signed char            sch1 = 1;
    signed short int       ssh1 = 1;
    signed long int        sli1 = 1;
    signed long long int   sll1 = 1;
    unsigned char          uch1 = 1;
    unsigned short int     ush1 = 1;
    unsigned long int      uli1 = 1;
    unsigned long long int ull1 = 1;
    float                  fl1  = 1;
    double                 dl1  = 1;
    long double            ld1  = 1;
    long int               cal, ans = 33;

    printf("---- scpa018 start ---- \n");

    cal = sub1 (  2,   2,   2,   2,
                  2,   2,   2,   2,
                  2,   2,   2) +
          sub1 (sch1, ssh1, sli1, sll1,
                uch1, ush1, uli1, ull1,
                fl1, dl1, ld1);

    if ( cal == ans )
        printf ("    ***  ok  *** \n");
    else {
        printf ("    ???  ng  ??? \n");
        printf ("       ans = %d\n", ans);
        printf ("       cal = %d\n", cal);
    }

    printf("---- scpa018  end  ---- \n");
exit (0);
}
long int    sub1( signed char            psch1,
                  signed short int       pssh1,
                  signed long int        psli1,
                  signed long long int   psll1,
                  unsigned char          puch1,
                  unsigned short int     push1,
                  unsigned long int      puli1,
                  unsigned long long int pull1,
                  float                  pfl1,
                  double                 pdl1,
                  long double            pld1 )
{
    return psch1+pssh1+psli1+psll1+
           puch1+push1+puli1+pull1+
           pfl1+pdl1+pld1;
}
