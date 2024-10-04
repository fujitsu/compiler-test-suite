#include <stdio.h>
int test11();
int test10();
int test09();
int test08();
int test07();
int test06();
int test05();
int test04();
int test03();
int test02();
int test01();

#if defined(i386)
#define LITTLE_ENDIAN 1
#endif
int main()
{
    printf("*** TEST FOR EXPRESSION *** STARTED\n");
    test01();
    test02();
    test03();
    test04();
    test05();
    test06();
    test07();
    test08();
    test09();
    test10();
    test11();
    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}


int test01()
{
    char                   ca    = 1,cb;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
#ifndef nollint
    long long int          llia  = 5;
#else
    long int               llia  = 5;
#endif
    float                  flta  = .5;
    double                 dbla  = .25;
    long double            ldbla = .125;
    signed long int        slia  = 6;
    unsigned short int     usia  = 7;
    int                    *pia;
    int                    rpia  = 8;

    pia = &rpia;

    printf("*** -01 *** STARTED\n");
    *pia? cb=ca+ia: printf("***-01-01**** N   G ****\n");
    if(cb == 3)
        printf("***-01-01*** O     K ***\n");
    else
        printf("***-01-01**** N   G ****\n");

    +ca? cb=ia-ca: printf("***-01-02**** N   G ****\n");
    if(cb == 1)
        printf("***-01-02*** O     K ***\n");
    else
        printf("***-01-02**** N   G ****\n");

    -ia? ia=sia**pia: printf("***-01-03**** N   G ****\n");
    if(ia == 24)
        printf("***-01-03*** O     K ***\n");
    else
        printf("***-01-03**** N   G ****\n");

    !sia? (cb=lia/ia) : (cb=lia%sia);
    if(cb == 1)
        printf("***-01-04*** O     K ***\n");
    else
        printf("***-01-04**** N   G ****\n");

#if INT64
    ia=18446744073709551615;
#else
    ia=4294967295;
#endif
    ~ia?printf("***-01-05**** N   G 1 *** %x\n",~ia)
                                                :(ia=sizeof(int));
#if INT64
    if(ia == 8)
#else
    if(ia == 4)
#endif
        printf("***-01-05*** O     K ***\n");
    else
        printf("***-01-05**** N   G 2 ****\n");

    &rpia? slia<<=1: printf("***-01-06**** N   G ****\n");
    if(slia == 12)
        printf("***-01-06*** O     K ***\n");
    else
        printf("***-01-06**** N   G ****\n");

    sizeof(short)? (flta=dbla+ldbla): (llia=llia+usia);
    if(flta == .375)
        printf("***-01-07*** O     K ***\n");
    else
        printf("***-01-07**** N   G ****\n");

    printf("*** -01 *** ENDED\n");
}


int test02()
{
    struct tag1 {
                  char       stca;
                  int        stia;
                  double     stda;
                };

    struct tag1 st1;
    struct tag1 st2;

    int                    ia = 1;
    short                  sa = 2;
    long                   la = 3;
    float                  fa = 0.5;

    st1.stca = 1;
    st1.stia = 2;
    st1.stda = 3;

    st2.stca = 4;
    st2.stia = 5;
    st2.stda = 6;

    printf("*** -02 *** STARTED\n");

    (long int)ia? st1.stca= st1.stca+st2.stca: st1.stca;
    if(st1.stca == 5)
        printf("***-02-01*** O     K ***\n");
    else
        printf("***-02-01**** N   G ****\n");

    (int)fa? st1.stia: (st1.stia= st1.stia+st2.stca);
    if(st1.stia == 6)
        printf("***-02-02*** O     K ***\n");
    else
        printf("***-02-02**** N   G ****\n");

        printf("***-02-03*** O     K ***\n");
#ifndef nollint
    (long long int)((short int)la)? ia= st1.stda*st2.stda: ia;
#else
    (long int)((short int)la)? ia= st1.stda*st2.stda: ia;
#endif
    if(ia == 18)
        printf("***-02-04*** O     K ***\n");
    else
        printf("***-02-04**** N   G ****\n");

    (int)sa? ia=sizeof(st1): ia;
#if INT64
    if(ia == 24)
#else
    if(ia == 16)
#endif
        printf("***-02-05*** O     K ***\n");
    else
        printf("***-02-05**** N   G ****\n");

    printf("*** -02 *** ENDED\n");
}


int test03()
{
    union tag1 {
                 unsigned char    unca;
                 unsigned short   unsa;
#if INT64
                 unsigned __int32     unia;
#else
                 unsigned int     unia;
#endif
               };

    union tag1 un1;
    union tag1 un2;

    int                    ia  = 1  ,ib;
    short int              sa  = 2  ,sb;
    long int               la  = 4  ,lb;
#ifndef nollint
    long long int          lla = 8  ,llb;
#else
    long int               lla = 8  ,llb;
#endif
    char                   ca  = 16 ,cb;
    double                 da  = 0.5,db;

    un1.unia = 2147483647;
    un2.unia = 4294967295;

    printf("*** -03 *** STARTED\n");

    ia*sa? (sb=un1.unca): (sb=un1.unsa);
#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(sb == 0xff)
#else
    if(sb == 127)
#endif
        printf("***-03-01*** O     K ***\n");
    else
        printf("***-03-01**** N   G ****\nsb:%x\n",sb);

    la/sa? (ib=un1.unca+un2.unca): (ib=un1.unsa);
    if(ib = 510)
        printf("***-03-02*** O     K ***\n");
    else
        printf("***-03-02**** N   G ****\n");

    lla%la? printf("***-03-03**** N   G ****\n"):
            (ib = un1.unsa+ia);
#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(ib == 0x10000)
#else
    if(ib == 32768)
#endif
        printf("***-03-03*** O     K ***\n");
    else
        printf("***-03-03**** N   G ****\nib:%x\n",ib);

    ia*sa*la/lla%ca? db=un2.unia-un1.unia:
                     printf("***-03-04**** N   G ****\n"); 
    printf("*** -03 *** ENDED\n");
}


int test04()
{
    int                    ia  = 1;
    short int              sa  = 2;
    long int               la  = 3;
#ifndef nollint
    long long int          lla = 4;
#else
    long int               lla = 4;
#endif
    char                   ca  = 5;

    void   xxx();
    void   yyy();

    printf("*** -04 *** STARTED\n");

    ia+sa? ia=ia+sa: printf("***-04-01**** N   G ****\n");
    if(ia == 3)
        printf("***-04-01*** O     K ***\n");
    else
        printf("***-04-01**** N   G ****\n");

    ia-sa? ia=ia+sa: printf("***-04-02**** N   G ****\n");
    if(ia == 5)
        printf("***-04-02*** O     K ***\n");
    else
        printf("***-04-02**** N   G ****\n");

    ia+lla-ca? xxx(): yyy();

    printf("*** -04 *** ENDED\n");
}


void xxx()
{
    printf("***-04-03*** O     K ***\n");
}

void yyy()
{
    printf("***-04-03**** N   G ****\n");
}


int test05()
{
    int                    ia    = 1,ib;
    short int              sa    = 2;
    long int               la    = 3;
#ifndef nollint
    long long int          lla   = 4;
#else
    long int               lla   = 4;
#endif
    char                   ca    = 5;

    volatile int           *pvia;
    volatile int           rpvia = 6;
    volatile int           *pvib;
    volatile int           rpvib = 7;

    pvia = &rpvia;
    pvib = &rpvib;

    printf("*** -05 *** STARTED\n");

    ib=ia<<sa? *pvia: *pvib;
    if(ib == 6)
        printf("***-05-01*** O     K ***\n");
    else
        printf("***-05-01**** N   G ****\n");

    lla>>ca? printf("***-05-02**** N   G ****\n"):
             (ia = sizeof(la));
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if(ia == 8)
#else
    if(ia == 4)
#endif
        printf("***-05-02*** O     K ***\n");
    else
        printf("***-05-02**** N   G ****\n");

    sa=lla<<ca>>la? ca**pvia**pvib:
                 printf("***-05-03**** N   G ****\n");
    if(sa == 210)
        printf("***-05-03*** O     K ***\n");
    else
        printf("***-05-03**** N   G ****\n");

    printf("*** -05 *** ENDED\n");
}


int test06()
{
    char                   ca     = 1,cb;
    int                    ia     = 2,ib;
    short int              sa     = 3,sb;
    long int               la     = 4,lb;
#ifndef nollint
    long long int          lla    = 5,llb;
#else
    long int               lla    = 5,llb;
#endif

    char                   *pca;
    char                   rca    = 6;
    char                   *pcb;
    char                   rcb    = 7;

    pca = &rca;
    pcb = &rcb;

    printf("*** -06 *** STARTED\n");

    cb=ca<ia? *pca: *pcb;
    if(cb == 6)
        printf("***-06-01*** O     K ***\n");
    else
        printf("***-06-01**** N   G ****\n");

    sa>la? printf("***-06-02**** N   G ****\n"):
          (ib=ca+ia);
    if(ib == 3)
        printf("***-06-02*** O     K ***\n");
    else
        printf("***-06-02**** N   G ****\n");

    lla<=ia+sa? sb=*pca*ca:
                printf("***-06-03**** N   G ****\n");
    if(sb == 6)
        printf("***-06-03*** O     K ***\n");
    else
        printf("***-06-03**** N   G ****\n");

    ca>=la-sa?  lb=ia<<ca:
                printf("***-06-04**** N   G ****\n");
    if(lb == 4)
        printf("***-06-04*** O     K ***\n");
    else
        printf("***-06-04**** N   G ****\n");

    printf("*** -06 *** ENDED\n");

}


int test07()
{
    char                   ca    = 1;
    int                    ia    = 2;
    short int              sa    = 3;
    long int               la    = 4;
#ifndef nollint
    long long int          lla   = 5;
#else
    long int               lla   = 5;
#endif
    float                  fa    = 6;

    char                   *pca;
    char                   rpca  = 7;

    pca = &rpca;

    printf("*** -07 *** STARTED\n");

    ca==ia? printf("***-07-01**** N   G ****\n"):
           (ca=ca+ia);
    if(ca == 3)
        printf("***-07-01*** O     K ***\n");
    else
        printf("***-07-01**** N   G ****\n");

    ia!=sa? ia=*pca*la:
            printf("***-07-02**** N   G ****\n");
    if(ia == 28)
        printf("***-07-02*** O     K ***\n");
    else
        printf("***-07-02**** N   G ****\n");

    fa=.6e+1? sa<<=1:
               printf("***-07-03**** N   G ****\n");
    if(sa == 6)
        printf("***-07-03*** O     K ***\n");
    else
        printf("***-07-03**** N   G ****\n");

    la!=4? printf("***-07-04**** N   G ****\n"):
          (fa = fa+lla);
    if(fa == 11)
        printf("***-07-04*** O     K ***\n");
    else
        printf("***-07-04**** N   G ****\n");

    la==lla-1? (la=*pca): (la=0);
    if(la == 7)
        printf("***-07-05*** O     K ***\n");
    else
        printf("***-07-05**** N   G ****\n");

    printf("*** -07 *** ENDED\n");
}


int test08()
{
    char                   ca    = 1;
    int                    ia    = 2;
    short int              sa    = 3;
    long int               la    = 4;
#ifndef nollint
    long long int          lla   = 5;
#else
    long int               lla   = 5;
#endif
    long double            lda   = 6;

    short int              *psa;
    short int              rpsa  = 7;

    volatile void          *vva;
    volatile void          *vvb;
    volatile void          *vvc;
    int                    ib    = 8;
    int                    ic;

    psa = &rpsa;
    vvc = &rpsa;
    vva = (volatile void *)&ib;

    printf("*** -08 *** STARTED\n");

    vvb=(ia&ia? vva: vvc);
    if(vvb == vva)
        printf("***-08-01*** O     K ***\n");
    else
        printf("***-08-01**** N   G ****\n");

    ia&sa? (ca = (char)*psa): (ca = *(int *)vva);
    if(ca == 7)
        printf("***-08-02*** O     K ***\n");
    else
        printf("***-08-02**** N   G ****\n");

    la&lla? ic=ca+ia*sa:
            printf("***-08-03**** N   G ****\n");
    if(ic == 13)
        printf("***-08-03*** O     K ***\n");
    else
        printf("***-08-03**** N   G ****\n");

    printf("*** -08 *** ENDED\n");
}

int test09()
{
    char                   ca    = 0;
    int                    ia    = 1,ic;
    int                    id    = 0;
    short int              sa    = 2;
    long int               la    = 3;
#ifndef nollint
    long long int          lla   = 4;
#else
    long int               lla   = 4;
#endif

    void                   *va;
    void                   *vb;
    void                   *vc;
    int                    ib    = 8;

    struct  tag1  *st;

    va = (void *)&ib;
    vc = (void *)&ib;

    printf("*** -09 *** STARTED\n");

    vb=(id^ia? va: vc);
    if(va == vb)
        printf("***-09-01*** O     K ***\n");
    else
        printf("***-09-01**** N   G ****\n");

    ic=sa^0? ++ca: --ca;
    if(ic == 1)
        printf("***-09-02*** O     K ***\n");
    else
        printf("***-09-02**** N   G ****\n");

    4^-lla? ia=lla*la:
             printf("***-09-03**** N   G ****\n");
    if(ia == 12)
        printf("***-09-03*** O     K ***\n");
    else
        printf("***-09-03**** N   G ****\n");

    --ca^0? printf("***-09-04**** N   G ****\n"):
            (ia>>=sa);
    if(ia == 3)
        printf("***-09-04*** O     K ***\n");
    else
        printf("***-09-04**** N   G ****\n");

    printf("*** -09 *** ENDED\n");
}


int test10()
{
    volatile int           *pvia;
    volatile int           rpvia = 1;

    int                    *pia;
    int                    rpia  = 2;

    char                   ca    = 3;
    int                    ia    = 4;
    short int              sa    = 5;
    long int               la    = 6;
#ifndef nollint
    long long int          lla   = 0;
#else
    long int               lla   = 0;
#endif

    pvia = &rpvia;
    pia  = &rpia;

    printf("*** -10 ***\n");

    ia|ca? (ca=*pvia): (ca=*pia);
    if(ca == 1)
        printf("***-10-01*** O     K ***\n");
    else
        printf("***-10-01**** N   G ****\n");

    sa&&0? (ia=*pia): (ia=*pvia);
    if(ia == 1)
        printf("***-10-02*** O     K ***\n");
    else
        printf("***-10-02**** N   G ****\n");

    la||lla? (sa=0): (sa=*pia);
    if(sa == 0)
        printf("***-10-03*** O     K ***\n");
    else
        printf("***-10-03**** N   G ****\n");

    printf("*** -10 *** ENDED\n");
}


int test11()
{
    char                   ca    = 0;
    int                    ia    = 1;
    short int              sa    = 2;
    long int               la    = 3;
#ifndef nollint
    long long int          lla   = 4;
#else
    long int               lla   = 4;
#endif

    printf("*** -11 *** STARTED\n");

    ca= 1?  0?   1:  0?   2:  3:   4;
    if(ca == 3)
        printf("***-11-01*** O     K ***\n");
    else
        printf("***-11-01**** N   G ****\n");

    ia= 1?0?0?0?1?0?0?1?0?0?1?0?0?0?0?1?1?0?0?0?1?0?0?0?1?1?0?1?1?0?0?0?
        1:2:3:4:5:6:7:8:9:10:11:12:13:14:15:16:17:18:19:20:21:22:23:24:
        25:26:27:28:29:30:31:32:33;
    if( ia == 32)
        printf("***-11-02*** O     K ***\n");
    else
        printf("***-11-02**** N   G ****\n");

    printf("*** -11 *** ENDED\n");
}
