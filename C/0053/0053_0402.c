#include<stdio.h>

 struct sttag1 *st1p;
 struct sttag1 { int i; char c; } st1;
 union  untag1 *un1p;
 union  untag1 { signed s; unsigned u; } un1;

 struct sttag2 *st2p;
 struct sttag2 { int i; char c; } st2[2][2];
 union  untag2 *un2p;
 union  untag2 { signed s; unsigned u; } un2[2][2];

 struct sttag3 *st3p;
 struct sttag3 { int i; char c; } st3[2][2][2];
 union  untag3 *un3p;
 union  untag3 { signed s; unsigned u; } un3[2][2][2];

 struct sttag4 *st4p;
 struct sttag4 { int i; char c; } *st4;
 union  untag4 *un4p;
 union  untag4 { signed s; unsigned u; } *un4;
int main()
{
   printf("*** \n");

   st1.i = -1;
   st1p = &st1;
   if (st1.i!=-1 || st1.c!=0 || st1p->i!=-1 || st1p->c!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   un1.s = -1;
   un1p = &un1;
#if INT64
   if (un1.s!=-1 || un1.u!=18446744073709551615 ||
       un1p->s!=-1 || un1p->u!=18446744073709551615)
#else
   if (un1.s!=-1 || un1.u!=4294967295 ||
       un1p->s!=-1 || un1p->u!=4294967295)
#endif
       printf(" *** \n");
   else
       printf(" *** \n");

   if (st2[0][0].i!=0 || st2[0][0].c!=0 ||
       st2[0][1].i!=0 || st2[0][1].c!=0 ||
       st2[0][0].i!=st2[1][0].i ||
       st2[0][0].c!=st2[1][0].c ||
       st2[0][0].i!=st2[1][1].i ||
       st2[0][0].c!=st2[1][1].c ||
       st2p!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (un2[0][0].s!=0 || un2[0][0].u!=0 ||
       un2[0][1].s!=0 || un2[0][1].u!=0 ||
       un2[0][0].s!=un2[1][0].s ||
       un2[0][0].u!=un2[1][0].u ||
       un2[0][1].s!=un2[1][1].s ||
       un2[0][1].u!=un2[1][1].u ||
       un2p!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (st3[0][0][0].i!=0 || st3[0][0][0].c!=0 ||
       st3[0][0][0].i!=st3[1][1][1].i ||
       st3[0][0][0].c!=st3[1][1][1].c ||
       st3[0][1][0].i!=st3[1][0][1].i ||
       st3[0][1][0].c!=st3[1][0][1].c ||
       st3p!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (un3[0][0][0].s!=0 || un3[0][0][0].u!=0 ||
       un3[0][0][0].s!=un3[1][0][1].s ||
       un3[0][0][0].u!=un3[1][0][1].u ||
       un3[0][1][0].s!=un3[1][1][1].s ||
       un3[0][1][0].u!=un3[1][1][1].u ||
       un3p!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (st4!=0 || un4!=0 || st4p!=0 || un4p!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
