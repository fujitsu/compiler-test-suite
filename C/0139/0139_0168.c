#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
 
    union   tag1 {
                   char                     nchara;
                   char                     ncharb;
                 } *ncmax,rncmax,*ncmin,rncmin;

    union   tag2 {
                   int                      ninta;
                   int                      nintb;
                 } *nimax,rnimax,*nimin,rnimin;

    union   tag3 {
                   short int                nsinta;
                   short int                nsintb;
                 } *nsimax,rnsimax,*nsimin,rnsimin;

    union   tag4 {
                   long int                 nlinta;
                   long int                 nlintb;
                 } *nlimax,rnlimax,*nlimin,rnlimin;

    union   tag5 {
                   long long int            nllinta;
                   long long int            nllintb;
                 } *nllimax,rnllimax,*nllimin,rnllimin;

    union   tag6 {
                   float                    nflta;
                   float                    nfltb;
                 } *nfmax,rnfmax,*nfmin,rnfmin;

    union   tag7 {
                   double                   ndbla;
                   double                   ndblb;
                 } *ndmax,rndmax,*ndmin,rndmin;

    union   tag8 {
                   long double              nldbla;
                   long double              nldblb;
                 } *nldmax,rnldmax,*nldmin,rnldmin;

    union   tag9 {
                   signed char              schara;
                   signed char              scharb;
                 } *scmax,rscmax,*scmin,rscmin;

    union  tag10 {
                   signed int               sinta;
                   signed int               sintb;
                 } *simax,rsimax,*simin,rsimin;

    union  tag11 {
                   signed short int         ssinta;
                   signed short int         ssintb;
                 } *ssimax,rssimax,*ssimin,rssimin;

    union  tag12 {
                   signed long int          slinta;
                   signed long int          slintb;
                 } *slimax,rslimax,*slimin,rslimin;

    union  tag13 {
                   signed long long int     sllinta;
                   signed long long int     sllintb;
                 } *sllimax,rsllimax,*sllimin,rsllimin;

    union  tag14 {
                   unsigned char            uchara;
                   unsigned char            ucharb;
                 } *ucmax,rucmax,*ucmin,rucmin;

    union  tag15 {
                   unsigned int             uinta;
                   unsigned int             uintb;
                 } *uimax,ruimax,*uimin,ruimin;

    union  tag16 {
                   unsigned short int       usinta;
                   unsigned short int       usintb;
                 } *usimax,rusimax,*usimin,rusimin;

    union  tag17 {
                   unsigned long int        ulinta;
                   unsigned long int        ulintb;
                 } *ulimax,rulimax,*ulimin,rulimin;

    union  tag18 {
                   unsigned long long int   ullinta;
                   unsigned long long int   ullintb;
                 } *ullimax,rullimax,*ullimin,rullimin;


    ncmax    =  &rncmax;
    ncmin    =  &rncmin;
    nimax    =  &rnimax;
    nimin    =  &rnimin;
    nsimax   =  &rnsimax;
    nsimin   =  &rnsimin;
    nlimax   =  &rnlimax;
    nlimin   =  &rnlimin;
    nllimax  =  &rnllimax;
    nllimin  =  &rnllimin;
    nfmax    =  &rnfmax;
    nfmin    =  &rnfmin;
    ndmax    =  &rndmax;
    ndmin    =  &rndmin;
    nldmax   =  &rnldmax;
    nldmin   =  &rnldmin;
    scmax    =  &rscmax;
    scmin    =  &rscmin;
    simax    =  &rsimax;
    simin    =  &rsimin;
    ssimax   =  &rssimax;
    ssimin   =  &rssimin;
    slimax   =  &rslimax;
    slimin   =  &rslimin;
    sllimax  =  &rsllimax;
    sllimin  =  &rsllimin;
    ucmax    =  &rucmax;
    ucmin    =  &rucmin;
    uimax    =  &ruimax;
    uimin    =  &ruimin;
    usimax   =  &rusimax;
    usimin   =  &rusimin;
    ulimax   =  &rulimax;
    ulimin   =  &rulimin;
    ullimax  =  &rullimax;
    ullimin  =  &rullimin;


    printf("\n");

 
    ncmax->nchara = 127;
    if (ncmax->ncharb == 127)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
 
    ncmin->nchara = 0;
    if (ncmin->ncharb == 0)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
 
    nimax->ninta = 2147483647;
    if (nimax->nintb == 2147483647)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
 
    nimin->ninta = -2147483648;
    if (nimin->nintb == -2147483648)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
 
    nsimax->nsinta = 32767;
    if (nsimax->nsintb == 32767)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
 
    nsimin->nsinta = -32768;
    if (nsimin->nsintb == -32768)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
 
    nlimax->nlinta = 2147483647;
    if (nlimax->nlintb == 2147483647)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
 
    nlimin->nlinta = -2147483648;
    if (nlimin->nlintb == -2147483648)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
 
    nllimax->nllinta = 2147483647;
    if (nllimax->nllintb == 2147483647)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
 
    nllimin->nllinta = -2147483648;
    if (nllimin->nllintb == -2147483648)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
 
    nfmax->nflta = 1.2e+3;
    if (nfmax->nfltb == 1.2e+3)
    {
        printf("TEST11***O   K***\n");
    }
    else
    {
        printf("TEST11***N   G***\n");
    }
 
    nfmin->nflta = -1.2e+3;
    if (nfmin->nfltb == -1.2e+3)
    {
        printf("TEST12***O   K***\n");
    }
    else
    {
        printf("TEST12***N   G***\n");
    }
 
    ndmax->ndbla = 3.4e+5;
    if (ndmax->ndblb == 3.4e+5)
    {
        printf("TEST13***O   K***\n");
    }
    else
    {
        printf("TEST13***N   G***\n");
    }
 
    ndmin->ndbla = -3.4e+5;
    if (ndmin->ndblb == -3.4e+5)
    {
        printf("TEST14***O   K***\n");
    }
    else
    {
        printf("TEST14***N   G***\n");
    }
 
    nldmax->nldbla = 6.7e+8;
    if (nldmax->nldblb == 6.7e+8)
    {
        printf("TEST15***O   K***\n");
    }
    else
    {
        printf("TEST15***N   G***\n");
    }
 
    nldmin->nldbla = -6.7e+8;
    if (nldmin->nldblb == -6.7e+8)
    {
        printf("TEST16***O   K***\n");
    }
    else
    {
        printf("TEST16***N   G***\n");
    }
 
    scmax->schara = 127;
    if (scmax->scharb == 127)
    {
        printf("TEST17***O   K***\n");
    }
    else
    {
        printf("TEST17***N   G***\n");
    }
 
    scmin->schara = -128;
    if (scmin->scharb == -128)
    {
        printf("TEST18***O   K***\n");
    }
    else
    {
        printf("TEST18***N   G***\n");
    }
 
    simax->sinta = 2147483647;
    if (simax->sintb == 2147483647)
    {
        printf("TEST19***O   K***\n");
    }
    else
    {
        printf("TEST19***N   G***\n");
    }
 
    simin->sinta = -2147483648;
    if (simin->sintb == -2147483648)
    {
        printf("TEST20***O   K***\n");
    }
    else
    {
        printf("TEST20***N   G***\n");
    }
 
    ssimax->ssinta = 32767;
    if (ssimax->ssintb == 32767)
    {
        printf("TEST21***O   K***\n");
    }
    else
    {
        printf("TEST21***N   G***\n");
    }
 
    ssimin->ssinta = -32768;
    if (ssimin->ssintb == -32768)
    {
        printf("TEST22***O   K***\n");
    }
    else
    {
        printf("TEST22***N   G***\n");
    }
 
    slimax->slinta = 2147483647;
    if (slimax->slintb == 2147483647)
    {
        printf("TEST23***O   K***\n");
    }
    else
    {
        printf("TEST23***N   G***\n");
    }
 
    slimin->slinta = -2147483648;
    if (slimin->slintb == -2147483648)
    {
        printf("TEST24***O   K***\n");
    }
    else
    {
        printf("TEST24***N   G***\n");
    }
 
    sllimax->sllinta = 2147483647;
    if (sllimax->sllintb == 2147483647)
    {
        printf("TEST25***O   K***\n");
    }
    else
    {
        printf("TEST25***N   G***\n");
    }
 
    sllimin->sllinta = -2147483648;
    if (sllimin->sllintb == -2147483648)
    {
        printf("TEST26***O   K***\n");
    }
    else
    {
        printf("TEST26***N   G***\n");
    }
 
    ucmax->uchara = 255;
    if (ucmax->ucharb == 255)
    {
        printf("TEST27***O   K***\n");
    }
    else
    {
        printf("TEST27***N   G***\n");
    }
 
    ucmin->uchara = 0;
    if (ucmin->ucharb == 0)
    {
        printf("TEST28***O   K***\n");
    }
    else
    {
        printf("TEST28***N   G***\n");
    }
 
    uimax->uinta = 4294967295;
    if (uimax->uintb == 4294967295)
    {
        printf("TEST29***O   K***\n");
    }
    else
    {
        printf("TEST29***N   G***\n");
    }
 
    uimin->uinta = 0;
    if (uimin->uintb == 0)
    {
        printf("TEST30***O   K***\n");
    }
    else
    {
        printf("TEST30***N   G***\n");
    }
 
    usimax->usinta = 65535;
    if (usimax->usintb == 65535)
    {
        printf("TEST31***O   K***\n");
    }
    else
    {
        printf("TEST31***N   G***\n");
    }
 
    usimin->usinta = 0;
    if (usimin->usintb == 0)
    {
        printf("TEST32***O   K***\n");
    }
    else
    {
        printf("TEST32***N   G***\n");
    }
 
    ulimax->ulinta = 4294967295;
    if (ulimax->ulintb == 4294967295)
    {
        printf("TEST33***O   K***\n");
    }
    else
    {
        printf("TEST33***N   G***\n");
    }
 
    ulimin->ulinta = 0;
    if (ulimin->ulintb == 0)
    {
        printf("TEST34***O   K***\n");
    }
    else
    {
        printf("TEST34***N   G***\n");
    }
 
    ullimax->ullinta = 4294967295;
    if (ullimax->ullintb == 4294967295)
    {
        printf("TEST35***O   K***\n");
    }
    else
    {
        printf("TEST35***N   G***\n");
    }
 
    ullimin->ullinta = 0;
    if (ullimin->ullintb == 0)
    {
        printf("TEST36***O   K***\n");
    }
    else
    {
        printf("TEST36***N   G***\n");
    }
    printf ("\n");
exit (0);
}
