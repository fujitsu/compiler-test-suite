#include  <stdio.h>

struct tag1 {
    float             t1_r4;
    double            t1_r8;
};

signed   char        esi1   =  2;
unsigned short int   esu2   =  4;
signed   long int    esi4   =  8;
signed long long int esu8   = 16;
float                esr4   =  8.0;
double               esr8   = 16.0;
#ifdef NO_LONG_DOUBLE
double          esr16  = 32.0;
#else
long double          esr16  = 32.0;
#endif
struct tag1          esst   = {8.0, 16.0};
signed long int      esi2a[100] = {
          2,   4,   6,   8,  10,  12,  14,  16,  18,  20,
         22,  24,  26,  28,  30,  32,  34,  36,  38,  40,
         42,  44,  46,  48,  50,  52,  54,  56,  58,  60,
         62,  64,  66,  68,  70,  72,  74,  76,  78,  80,
         82,  84,  86,  88,  90,  92,  94,  96,  98, 100,
        102, 104, 106, 108, 110, 112, 114, 116, 118, 120,
        122, 124, 126, 128, 130, 132, 134, 136, 138, 140,
        142, 144, 146, 148, 150, 152, 154, 156, 158, 160,
        162, 164, 166, 168, 170, 172, 174, 176, 178, 180,
        182, 184, 186, 188, 190, 192, 194, 196, 198, 200 };

void sub(
    signed   char        *psi1,
    unsigned short int   *psu2,
    signed   long int    *psi4,
    signed long long int *psu8,
    float                *psr4,
    double               *psr8,
#ifdef NO_LONG_DOUBLE
    double          *psr16,
#else
    long double          *psr16,
#endif
    struct tag1          *psst,
    signed long int       psi2a[])
{
    *psi1        = *psi1 * 2;
    *psu2        = *psu2 * 2;
    *psi4        = *psi4 * 2;
    *psu8        = *psu8 * 2;
    *psr4        = *psr4 * 2.0;
    *psr8        = *psr8 * 2.0;
    *psr16       = *psr16 * 2.0;
     psst->t1_r4 =  psst->t1_r4 * 2.0;
     psst->t1_r8 =  psst->t1_r8 * 2.0;
     psi2a[99] =  psi2a[99] * 2;
}
int main()
{
    signed   char        asi1   =  1;
    unsigned short int   asu2   =  2;
    signed   long int    asi4   =  4;
    signed long long int asu8   =  8;
    float                asr4   =  4.0;
    double               asr8   =  8.0;
#ifdef NO_LONG_DOUBLE
    double          asr16  = 16.0;
#else
    long double          asr16  = 16.0;
#endif
    struct tag1          asst   = {4.0, 8.0};
    signed long int      asi2a[100] = {
              1,   2,   3,   4,   5,   6,   7,   8,   9,  10,
             11,  12,  13,  14,  15,  16,  17,  18,  19,  20,
             21,  22,  23,  24,  25,  26,  27,  28,  29,  30,
             31,  32,  33,  34,  35,  36,  37,  38,  39,  40,
             41,  42,  43,  44,  45,  46,  47,  48,  49,  50,
             51,  52,  53,  54,  55,  56,  57,  58,  59,  60,
             61,  62,  63,  64,  65,  66,  67,  68,  69,  70,
             71,  72,  73,  74,  75,  76,  77,  78,  79,  80,
             81,  82,  83,  84,  85,  86,  87,  88,  89,  90,
             91,  92,  93,  94,  95,  96,  97,  98,  99, 100 };

    printf(" --- start ---\n");

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

    printf(" ---  end  ---\n");
}
