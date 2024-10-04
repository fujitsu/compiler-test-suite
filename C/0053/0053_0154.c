#include<stdio.h>

 volatile const struct sttag1 {
       short  s;
       long   l;
 } exst1;
 volatile const union untag1 {
       int    i;
       long   l;
 } exun1,exun12;
int main()
{
   printf("*** \n");

   {
     auto volatile const struct sttag1 st1,*st1p;
     auto volatile const struct sttag2 {
           char  c;
           int   i;
     } st2={0x7f,0x7fffffff};
     register volatile const enum entag2 {
           enx=-1,  eny,  enz=100
     } en1 = enz;
     static volatile const union untag2 {
           signed  s;
           unsigned u;
     } un2[2] = { { -1 }, { 0 } };

     extern volatile const struct sttag1 exst1;
     extern volatile const union untag1 exun1,exun12;

     typedef volatile const enum tagen1 {
           ena,  enb,  enc
     } typeen;
     typeen  en2,*addren2;

     st1p = &st1;
     if (st1.s!=st1p->s || st1.l!=st1p->l)
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

     addren2 = &en2;
     if (en2!=*addren2 || ena!=0 || enb!=1 || enc!=2)
         printf(" *** \n");
     else
         printf(" *** \n");
   }

   printf("*** \n");
}
