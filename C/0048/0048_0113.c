#include <stdio.h>

 union tag1 {
     long double             ld;
     char                 c1,c2;
     signed short            ss;
     unsigned int            ui;
     volatile long           vl;
     long long               ll;
     float             cf;
     double volatile  cvd;
     union tag2 {
         char      ca[2][2];
         short             **sp;
         int          *iap[2];
     } un2;
     struct tag3 {
         enum tag4 { en1, en2=10, en3 } en;
         int  i;
     } st3;
     enum tag5 { ena, enb=20, enc } en;
     union tag2 *un21;
     struct tag3  st31[2];
 };

 short *sap[2],exs1=32767,exs2=-32768;
 int   exia[10] = { 0, 1, 2, 3, 4, 0, -1, -2, -3, -4 };
 union tag2 exun2;
 union tag1 exun1 = { 1e20 };  
int main()
 {
 union tag1 static un1 = { 1e20 };
 union tag1 *un1p=&un1;

 printf(" ***  test start *** \n");

 printf(" ***  test end *** \n");
 }
