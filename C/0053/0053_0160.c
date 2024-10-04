#include<stdio.h>
int main()
{
   printf("*** \n");

   {
     volatile const struct sttag1 {
           short  s;
           long   l;
     } st1;
     volatile const struct sttag1 *st1p;
     volatile const union untag1 {
           int    i;
           long   l;
     } un1,*un1p;
     volatile const enum tagen1 {
           ena,  enb,  enc
     } en1,*en1p;

     static volatile const struct sttag2 {
           char  c;
           int   i;
     } st2 = { 0x7f, 0x7fffffff };
     volatile const enum entag2 {
           enx=-1,  eny,  enz=100
     } en2 = enz;
     static volatile const union untag2 {
           signed  s;
           unsigned u;
     } un2[2] = { { -1 }, { 0 } };


     st1p = &st1;
     if (st1.s!=st1p->s || st1.l!=st1p->l)
         printf(" *** \n");
     else
         printf(" *** \n");

     un1p = &un1;
     if (un1.i!=un1p->i || un1.l!=un1p->l)
         printf(" *** \n");
     else
         printf(" *** \n");

     en1p = &en1;
     if (en1!=*en1p || ena!=0 || enb!=1 || enc!=2)
         printf(" *** \n");
     else
         printf(" *** \n");

     if (st2.c!=127 || st2.i!=2147483647)
         printf(" *** \n");
     else
         printf(" *** \n");

     if (en2!=100 || enx!=-1 || eny!=0 || enz!=100)
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
   }

   printf("*** \n");
}
