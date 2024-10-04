#include<stdio.h>

int func1();
int func2();
int main()
{
   int wk=0;

   printf("***  ** MK3 TEST FOR X_CHGTRE ** STARTED ***\n");

 {
    int      ia = 1;
    int      ib = 2;

    if(ia || ib)
        printf("*** -01 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ic = 1;
    int      id = 2;
    int      *pt;
    pt = &id;

    if(ic || pt)
        printf("*** -02 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ie = 1;
    int      arr1[2];

    if(ie || arr1)
        printf("*** -03 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ig = 1;

    if(ig || func1)
        printf("*** -04 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ih = 1;
    int      ii = 1;
    int      *ptb;
    ptb = &ii;

    if(ptb || ih)
        printf("*** -05 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ij = 1;
    int      ik = 1;
    int      *ptc;
    int      *ptd;
    ptc = &ij;
    ptd = &ik;

    if(ptc || ptd)
        printf("*** -06 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      il = 1;
    int      arr2[2];
    int      *pte;
    pte = &il;

    if(pte || arr2)
        printf("*** -07 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      im = 1;
    int      *ptf;
    ptf = &im;

    if(ptf || func1)
        printf("*** -08 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      io = 1;
    int      arr4[2];

    if(arr4 || io)
        printf("*** -09 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ip = 1;
    int      *ptg;
    int      arr5[2];
    ptg = &ip;

    if(arr5 || ptg)
        printf("*** -10 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      arr6[2];
    int      arr7[2];

    if(arr6 || arr7)
        printf("*** -11 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      arr8[2];

    if(arr8 || func1)
        printf("*** -12 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      ir = 1;

    if(func1 || ir)
        printf("*** -13 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    if(func1 || func2)
        printf("*** -14 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      is = 1;
    int      iz;
    int      iy;

    iz = is || 1;
    iy = is || 'a';
    if(iz)
        if(iy)
            printf("*** -15 *** O     K ***\n");
        else
            printf("*** \n");
    else
        printf("*** \n");
 }
 {
    int      it = 1;
    int      *pth;
    int      ix;
    pth = &it;

    ix = pth || 1 ;
    if(ix)
        printf("*** -16 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      iu = 1;
    int      iv = 2;
    int      *pti;
    int      *ptj;
    pti = &iu;
    ptj = &iv;

    if(pti || ptj)
        printf("*** -17 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      arr6[2];
    int      iw;

    iw = arr6 || 1;
    if(iw)
        printf("*** -18 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      iv;

    iv = func1 || 1;
    if(iv)
        printf("*** -19 *** O     K ***\n");
    else
        printf("*** \n");
 }
 {
    int      iu;
    int      *ppp;
    int      it = 1;
    ppp = &it;

    iu = 0 || ppp;
    if(iu)
        printf("*** -20 *** O     K ***\n");
    else
        printf("*** \n");
 }
   printf("***  ** MK3 TEST FOR X_CHGTRE ** ENDED ***\n");
}

int func1()
{        }

int func2()
{        }
