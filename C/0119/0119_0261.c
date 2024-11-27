#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct tag1 {
    float             t1_r4;
    double            t1_r8;
};

signed   char        esi1;
unsigned short int   esu2;
signed   long int    esi4;
signed long long int esu8;
float                esr4;
double               esr8;
long double          esr16;
struct tag1          esst;
signed long int      esi2a[100];

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
    signed   char        asi1;
    unsigned short int   asu2;
    signed   long int    asi4;
    signed long long int asu8;
    float                asr4;
    double               asr8;
    long double          asr16;
    struct tag1          asst;
    signed long int      asi2a[100];

    printf(" --- scpau05 start ---\n");

    sub(&asi1, &asu2, &asi4, &asu8, &asr4, &asr8, &asr16, &asst, asi2a);

    if ((asi1        == esi1       ) &&
        (asu2        == esu2       ) &&
        (asi4        == esi4       ) &&
        (asu8        == esu8       ) &&
        (asr4        == esr4       ) &&
        (asr8        == esr8       ) &&
        (asr16       == esr16      ) &&
        (asst.t1_r4  == esst.t1_r4 ) &&
        (asst.t1_r8  == esst.t1_r8 ) &&
        (asi2a[99] == esi2a[99]))
        printf("      *** ok ***\n");
    else
        printf("      ??? ng ???\n");

    printf(" --- scpau05  end  ---\n");
exit (0);
}
