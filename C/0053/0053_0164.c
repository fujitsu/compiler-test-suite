#include<stdio.h>
int main()
{
   printf("*** \n");

   {
     struct sttag1 {
           short  s;
           long   l;
     } st1;
     union untag1 {
           int    i;
           long   l;
     } un1={.i=0},un12={.l=0};
     enum tagen1 {
           ena=0,  enb,  enc
     } en1=ena,*en1p;

     static struct sttag2 {
           char  c;
           int   i;
     } st2 = { 0x7f, 0x7fffffff };
     enum entag2 {
           enx=-1,  eny,  enz=100
     } en2 = enz;
     static union untag2 {
           signed  s;
           unsigned u;
     } un2[2] = { { -1 }, { 0 } };


     st1.s = 0;  st1.l = st1.s;
     if (st1.s!=0 || st1.l!=0)
         printf(" *** \n");
     else
         printf(" *** \n");

     un12 = un1;
     if (un1.i!=un12.i || un1.l!=un12.l)
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
