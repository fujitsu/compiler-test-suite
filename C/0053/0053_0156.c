#include<stdio.h>

 volatile struct sttag1 {
       short  s;
       long   l;
 } exst1;
 const union untag1 {
       int    i;
       long   l;
 } exun1,exun12;
int main()
{
   printf("*** \n");

   {
     auto volatile struct sttag1 st1,*st1p;
     auto const struct sttag2 {
           char  c;
           int   i;
     } st2 = {0x7f,0x7fffffff};
     register volatile enum entag2 {
           enx=-1,  eny,  enz=100
     } en1 = enz;
     static const union untag2 {
           signed  s;
           unsigned u;
     } un2[2] = { { -1 }, { 0 } };

     extern volatile struct sttag1 exst1;
     extern const union untag1 exun1,exun12;

     typedef volatile enum tagen1 {
           ena,  enb,  enc
     } typeen;
     typeen  en2;

     st1.s = -1;  st1.l = 0x7fffffff;
     if (st1.s!=-1 || st1.l!=2147483647)
         printf(" *** \n");
     else
         printf(" *** \n");

     if (st2.c!=127 || st2.i!=2147483647)
         printf(" *** \n");
     else
         printf(" *** \n");

     if (en1!=100 || enx!=-1 || eny!=0 || enz!=100)
         printf(" *** \n");
     else
         printf(" *** \n");

#if INT64
     if (un2[0].s!=-1 || un2[0].u!=18446744073709551615 ||
         un2[1].s!=0 || un2[1].u!=0)
#else
     if (un2[0].s!=-1 || un2[0].u!=4294967295 ||
         un2[1].s!=0 || un2[1].u!=0)
#endif
         printf(" *** \n");
     else
         printf(" *** \n");

     if (exst1.s || exst1.l)
         printf(" *** \n");
     else
         printf(" *** \n");

     if (exun1.i || exun1.l || exun12.i || exun12.l)
         printf(" *** \n");
     else
         printf(" *** \n");

     en2 = enb;
     if (en2!=1 || ena!=0 || enb!=1 || enc!=2)
         printf(" *** \n");
     else
         printf(" *** \n");
   }

   printf("*** \n");
}
