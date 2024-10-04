#include<stdio.h>
int main()
{
   int wk=0;

  printf("***  ** MK3 TEST FOR X_CHGTRE ** STARTED ***\n");

 {
    int      ia = 4;
    int      ib = 2;
    int      ic;

    ic = ia - ib;
    if(ic == 2)
        printf("*** -01 *** O     K ***\n");
    else
        printf("*** -01 **** N   G ****\n");
 }
 {
    int      id = 1;
    static int      arr[3] = { 0,1,2 };
    int      *pin;
    pin = arr + 1;
    pin = pin - id;
    if(*pin == 0)
        printf("*** -02 *** O     K ***\n");
    else
        printf("*** -02 **** N   G ****\n");
 }
 {
    static int      arry1[3]={ 0,1,2 };
    int      *pt1;
    int      *pt2;
    int      ipa;
    pt1 = arry1+2;
    pt2 = arry1+1;
    ipa = pt1-pt2;

    if(ipa == 1)
        printf("*** -03 *** O     K ***\n");
    else
        printf("*** -03 **** N   G ****\n");
 }
 {
    static int      arr50[5] = { 0,1,2,3,4 };
    int      ik = 3;
    int      *p50;
    p50 = arr50+4;

    p50 = p50- ik;
    if(*p50==1)
        printf("*** -04 *** O     K ***\n");
    else
        printf("*** -04 **** N   G ****\n");
 }
 {
    static int      arr120[10] = { 0,1,2,3,4,5,6,7,8,9 };
    static int      arr130[10] = { 0,1,2,3,4,5,6,7,8,9 };
    int      *ptr;
    int      io;
    ptr = arr130-1;
    io=arr130-ptr;
    if(io == 1)
        printf("*** -05 *** O     K ***\n");
    else
        printf("*** -05 **** N   G ****\n");
 }
 {
   struct chg1806 {
     int      arrr[10];
     int      arrt[10];
   } chg06;

   int      iq;

   iq = chg06.arrt - chg06.arrr;
   
   if(iq == 10)
     printf("*** -06 *** O     K ***\n");
   else
     printf("*** -06 **** N   G ****\n");
 }
 {
    int      ir = 130;
    int      is;

    is = ir - 1;
    is = is - 0x81;
    if(is == 0)
        printf("*** -07 *** O     K ***\n");
    else
        printf("*** -07 **** N   G ****\n");
 }
 {
    static  int  arr123[5] = { 0,1,2,3,4 };
    int      *p11;
    p11 = arr123+4;

    p11 = p11-1;
    if(*p11==3)
        printf("*** -08 *** O     K ***\n");
    else
        printf("*** -08 **** N   G ****\n");
 }
 {
    int      iw = 45;
    int      ix;

    ix = 50 - 45;
    if(ix == 5)
        printf("*** -09 *** O     K ***\n");
    else
        printf("*** -09 **** N   G ****\n");
 }
   printf("***  ** MK3 TEST FOR X_CHGTRE ** ENDED ***\n");
}
