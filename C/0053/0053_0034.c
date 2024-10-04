#include<stdio.h>
int main()
{
   int wk=0;

   printf("***  ** MK3 TEST FOR X_CHGTRE ** STARTED ***\n");

 {
    int      ia = 4;
    int      ib = 2;
    int      ic;

    ic = ia / ib;
    if(ic == 2)
        printf("*** -01 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      id = 129;
    int      ie;
    int      ig;

    ie = id / 129;
    ig = id / 0x81;
    if(ie == 1)
        if(ig == 1)
            printf("*** -02 *** O     K ***\n");
        else
            printf("*** \n");
    else
        printf("*** \n");
 }
 {
    int      ih = 2;
    int      ii;

    ii = 3 % ih;
    if(ii == 1)
        printf("*** -03 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ij = 9;
    int      ik = 5;
    int      il;

    il = ij % ik;
    if(il == 4)
        printf("*** -04 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      im = 130;
    int      in;
    int      io;

    in = im % 120;
    io = im % 0x81;
    if(in == 10)
        if(io == 1)
            printf("*** -05 *** O     K ***\n");
        else
            printf("*** \n");
    else
        printf("*** \n");
 }
 {
    int      ip = 5;
    int      iq;

    iq = 1 / ip;
    if(iq == 0)
        printf("*** -06 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ir = 2;
    int      is;

    is = 1 << ir;
    if(is == 4)
        printf("*** -07 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      it = 3;
    int      iu = 2;
    int      iv;

    iv = it << iu;
    if(iv == 12)
        printf("*** -08 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      iw = 0;
    int      ix;
    int      iy;

    ix = iw << 1;
    iy = iw << 0x1F;
    if(ix == 0)
    {
        if(iy == 0)
            printf("*** -09 *** O     K ***\n");
        else
            printf("*** \n");
    }
    else
        printf("*** \n");
 }
 {
    int      iz = 2;
    int      iaa;    ;

    iaa = 1 << iz;
    if(iaa == 4)
        printf("*** -10 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      iab = 2;
    int      iac;

    iac = 8 >> iab;
    if(iac == 2)
        printf("*** -11 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      iad = 20;
    int      iae = 2;
    int      iaf;

    iaf = iad >> iae;
    if(iaf == 5)
        printf("*** -12 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      iag = 0;
    int      iah;
    int      iai;

    iah = iag >> 1;
    iai = iag >> 0x1F;
    if(iah == 0)
    {
        if(iai == 0)
            printf("*** -13 *** O     K ***\n");
        else
            printf("*** \n");
    }
    else
        printf("*** \n");
 }
 {
    int      iaj = 3;
    int      iak;

    iak = 24 >> iaj;
    if(iak == 3)
        printf("*** -14 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ial = 5;
    int      iam;

    iam = 1 ^ ial;
    if(iam == 4)
        printf("*** -15 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ian = 5;
    int      iao = 3;
    int      iap;

    iap = ian ^ iao;
    if(iap == 6)
        printf("*** -16 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      iaq = 7;
    int      iar = 3;
    int      ias;
    int      iat;

    ias = iaq ^ 1;
    iat = iar ^ 0x81;
    if(ias == 6)
        if(iat == 130)
            printf("*** -17 *** O     K ***\n");
        else
            printf("*** \n");
    else
        printf("*** \n");
 }
 {
    int      iau = 2;
    int      iav;

    iav = 1 ^ iau;
    if(iav == 3)
        printf("*** -18 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      iaw = 2;
    int      iax;

    iax = 1 | iaw;
    if(iax == 3)
        printf("*** -19 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      iay = 2;
    int      iaz = 5;
    int      iba;

    iba = iay | iaz;
    if(iba == 7)
        printf("*** -20 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ibb = 2;
    int      ibc;
    int      ibd;

    ibc = ibb | 2;
    ibd = ibb | 0x81;
    if(ibc == 2)
        if(ibd == 131)
            printf("*** -21 *** O     K ***\n");
        else
            printf("*** \n");
    else
        printf("*** \n");
 }
 {
    int      ibe = 21;
    int      ibf;

    ibf = ibe | 1;
    if(ibf == 21)
        printf("*** -22 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ibg = 21;
    int      ibh;

    ibh = ibg & 5;
    if(ibh == 5)
        printf("*** -23 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ibi = 21;
    int      ibj = 5;
    int      ibk;

    ibk = ibi & ibj;
    if(ibk == 5)
        printf("*** -24 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ibl = 21;
    int      ibm;
    int      ibn;

    ibm = ibl & 1;
    ibn = ibl & 0x81;
    if(ibm == 1)
        if(ibn == 1)
            printf("*** -25 *** O     K ***\n");
        else
            printf("*** \n");
    else
        printf("*** \n");
 }
 {
    int      ibo = 21;
    int      ibp;

    ibp = ibo & 1;
    if(ibp == 1)
        printf("*** -26 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ibq = 21;
    int      ibr = 3;
    int      ibs;

    ibs = ibq * ibr;
    if(ibs == 63)
        printf("*** -27 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ibt = 2;
    int      ibu = 3;
    int      ibv;
    int      ibw;

    ibv = ibt * 1;
    ibw = ibu * 0x81;
    if(ibv == 2)
        if(ibw == 387)
            printf("*** -28 *** O     K ***\n");
        else
            printf("*** \n");
    else
        printf("*** \n");
 }
   printf("***  ** MK3 TEST FOR X_CHGTRE ** ENDED ***\n");
}
