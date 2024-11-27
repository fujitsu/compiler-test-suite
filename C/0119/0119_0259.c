#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct tag1 {
    float             t1_r4;
    double            t1_r8;
};

static signed   char        esi1;
static unsigned short int   esu2;
static signed   long int    esi4;
static signed long long int esu8;
static float                esr4;
static double               esr8;
static long double          esr16;
static struct tag1          esst;
static signed long int      esi2a[100];

void sub(
    signed   char        *psi1,
    unsigned short int   *psu2,
    signed   long int    *psi4,
    signed long long int *psu8,
    float                *psr4,
    double               *psr8,
    long double          *psr16,
    struct tag1          *psst,
    signed long int       psi2a[])
{
    *psi1        = esi1        = 1;
    *psu2        = esu2        = 2;
    *psi4        = esi4        = 4;
    *psu8        = esu8        = 8;
    *psr4        = esr4        = 4.0;
    *psr8        = esr8        = 8.0;
    *psr16       = esr16       = 16.0;
     psst->t1_r4 = esst.t1_r4  = 4.0;
     psst->t1_r8 = esst.t1_r8  = 8.0;
     psi2a[99] = esi2a[99] = 2;
}
int main()
{
    static signed   char        isi1;
    static unsigned short int   isu2;
    static signed   long int    isi4;
    static signed long long int isu8;
    static float                isr4;
    static double               isr8;
    static long double          isr16;
    static struct tag1          isst;
    static signed long int      isi2a[100];

    printf(" --- scpau03 start ---\n");

    sub(&isi1, &isu2, &isi4, &isu8, &isr4, &isr8, &isr16, &isst, isi2a);

    if ((isi1        == esi1       ) &&
        (isu2        == esu2       ) &&
        (isi4        == esi4       ) &&
        (isu8        == esu8       ) &&
        (isr4        == esr4       ) &&
        (isr8        == esr8       ) &&
        (isr16       == esr16      ) &&
        (isst.t1_r4  == esst.t1_r4 ) &&
        (isst.t1_r8  == esst.t1_r8 ) &&
        (isi2a[99] == esi2a[99]))
        printf("      *** ok ***\n");
    else
        printf("      ??? ng ???\n");

    printf(" --- scpau03  end  ---\n");
exit (0);
}
