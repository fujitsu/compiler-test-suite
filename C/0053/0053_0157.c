#include<stdio.h>

 extern struct sttag1 {
       short  s;
       long   l;
 } st1;
 union untag1 {
       int    i;
       long   l;
 } un1,un12;
 typedef enum tagen1 {
       ena,  enb,  enc
 } typeen;
int main()
{
   auto enum tagen1 ena1;
   auto struct sttag2 {
         char  c;
         int   i;
   } st2;
   register enum entag2 {
         enx=-1,  eny,  enz=100
   } en1 = enz;
   static union untag2 {
         signed  s;
         unsigned u;
   } un2[2] = { { -1 }, { 0 } };

   extern struct sttag1 st1;
   extern union untag1 un1,un12;
   typeen  en2,*addren2;

   printf("*** \n");

   if (st1.s!=0 || st1.l!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (un1.i!=0 || un1.l!=0 || un12.i!=0 || un12.l!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   en2 = ena;
   if (en2!=0 || ena!=0 || enb!=1 || enc!=2)
       printf(" *** \n");
   else
       printf(" *** \n");

   ena1 = enc;
   if (ena1!=2)
       printf(" *** \n");
   else
       printf(" *** \n");

   st2.c=0x7f; st2.i=0x7fffffff;
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
       un2[1].s!=0  || un2[1].u!=0)
#else
   if (un2[0].s!=-1 || un2[0].u!=4294967295 ||
       un2[1].s!=0  || un2[1].u!=0)
#endif
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
struct sttag1 st1={0,0};
