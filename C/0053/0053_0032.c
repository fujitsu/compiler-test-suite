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

    if(ia && ib)
        printf("*** -01 *** O     K ***\n");
    else
        printf("*** -01 **** N   G ****\n");
 }
 {
    int      ic = 1;
    int      id = 2;
    int      *pt;
    pt = &id;

    if(ic && pt)
        printf("*** -02 *** O     K ***\n");
    else
        printf("*** -02 **** N   G ****\n");
 }
 {
    int      ie = 1;
    int      arr1[2];

    if(ie && arr1)
        printf("*** -03 *** O     K ***\n");
    else
        printf("*** -03 **** N   G ****\n");
 }
 {
    int      ig = 1;

    if(ig && func1)
        printf("*** -04 *** O     K ***\n");
    else
        printf("*** -04 **** N   G ****\n");
 }
 {
    int      ih = 1;
    int      ii = 1;
    int      *ptb;
    ptb = &ii;

    if(ptb && ih)
        printf("*** -05 *** O     K ***\n");
    else
        printf("*** -05 **** N   G ****\n");
 }
 {
    int      ij = 1;
    int      ik = 1;
    int      *ptc;
    int      *ptd;
    ptc = &ij;
    ptd = &ik;

    if(ptc && ptd)
        printf("*** -06 *** O     K ***\n");
    else
        printf("*** -06 **** N   G ****\n");
 }
 {
    int      il = 1;
    int      arr2[2];
    int      *pte;
    pte = &il;

    if(pte && arr2)
        printf("*** -07 *** O     K ***\n");
    else
        printf("*** -07 **** N   G ****\n");
 }
 {
    int      im = 1;
    int      *ptf;
    ptf = &im;

    if(ptf && func1)
        printf("*** -08 *** O     K ***\n");
    else
        printf("*** -08 **** N   G ****\n");
 }
 {
    int      io = 1;
    int      arr4[2];

    if(arr4 && io)
        printf("*** -09 *** O     K ***\n");
    else
        printf("*** -09 **** N   G ****\n");
 }
 {
    int      ip = 1;
    int      *ptg;
    int      arr5[2];
    ptg = &ip;

    if(arr5 && ptg)
        printf("*** -10 *** O     K ***\n");
    else
        printf("*** -10 **** N   G ****\n");
 }
 {
    int      arr6[2];
    int      arr7[2];

    if(arr6 && arr7)
        printf("*** -11 *** O     K ***\n");
    else
        printf("*** -11 **** N   G ****\n");
 }
 {
    int      arr8[2];

    if(arr8 && func1)
        printf("*** -12 *** O     K ***\n");
    else
        printf("*** -12 **** N   G ****\n");
 }
 {
    int      ir = 1;

    if(func1 && ir)
        printf("*** -13 *** O     K ***\n");
    else
        printf("*** -13 **** N   G ****\n");
 }
 {
    if(func1 && func2)
        printf("*** -14 *** O     K ***\n");
    else
        printf("*** -14 **** N   G ****\n");
 }
 {
    int      is = 1;

    if(is && 1)
        if(is && 'a')
            printf("*** -15 *** O     K ***\n");
        else
            printf("*** -15 **** N   G ****\n");
    else
        printf("*** -15 **** N   G ****\n");
 }
 {
    int      it = 1;
    int      *pth;
    pth = &it;

    if(pth && 1)
        printf("*** -16 *** O     K ***\n");
    else
        printf("*** -16 **** N   G ****\n");
 }
 {
    int      iu = 1;
    int      iv = 2;
    int      *pti;
    int      *ptj;
    pti = &iu;
    ptj = &iv;

    if(pti && ptj)
        printf("*** -17 *** O     K ***\n");
    else
        printf("*** -17 **** N   G ****\n");
 }
 {
    int      arr6[2];

    if(arr6 && 1)
        printf("*** -18 *** O     K ***\n");
    else
        printf("*** -18 **** N   G ****\n");
 }
 {
    if(func1 && 1)
        printf("*** -19 *** O     K ***\n");
    else
        printf("*** -19 **** N   G ****\n");
 }
 {
    int      iv = 1;

    if(1 && iv)
        printf("*** -20 *** O     K ***\n");
    else
        printf("*** -20 **** N   G ****\n");
 }
 {
    int      iw = 1;
    int      *ptk;
    ptk = &iw;

    if(1000 && ptk)
        printf("*** -21 *** O     K ***\n");
    else
        printf("*** -21 **** N   G ****\n");
 }
 {
    int      arr7[2];

    if(1000 && arr7)
        printf("*** -22 *** O     K ***\n");
    else
        printf("*** -22 **** N   G ****\n");
 }
 {
    if(200 && func1)
        printf("*** -23 *** O     K ***\n");
    else
        printf("*** -23 **** N   G ****\n");
 }
 {
    int      iz;

    iz = func1 && 0;
    if(iz)
        printf("*** -24 **** N   G ****\n");
    else
        printf("*** -24 *** O     K ***\n");
 }
 {
    int      ix;
    int      arr9[2];

    ix = arr9 && 0;
    if(ix)
        printf("*** -25 **** N   G ****\n");
    else
        printf("*** -25 *** O     K ***\n");
 }
   printf("***  ** MK3 TEST FOR X_CHGTRE ** ENDED ***\n");
}

int func1()
{        }

int func2()
{        }
