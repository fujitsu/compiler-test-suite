#include<stdio.h>
int main()
{
   struct sttag0 *st0p;
   struct sttag0 { int i; char c; } ;
   struct sttag0 st0={0,0};
   union  untag0 *un0p;
   union  untag0 { signed s; unsigned u; } ;
   union  untag0 un0={0};

   struct sttag1 *st1p;
   struct sttag1 { int i; char c; } st1;
   union  untag1 *un1p;
   union  untag1 { signed s; unsigned u; } un1;

   struct sttag2 *st2p;
   struct sttag2 { int i; char c; } st2[2][2]={{0,0},{0,0}};
   union  untag2 *un2p;
   union  untag2 { signed s; unsigned u; } un2[2][2]={0,0};

   struct sttag3 *st3p;
   struct sttag3 { int i; char c; } st3[2][2][2]={{{0,0},{0,0}},{{0,0},{0,0}}};
   union  untag3 *un3p;
   union  untag3 { signed s; unsigned u; } un3[2][2][2]={0,0};

   struct sttag4 *st4p2;
   struct sttag4 { int i; char c; } *st4p,st4={0,0};
   union  untag4 *un4p2;
   union  untag4 { signed s; unsigned u; } *un4p,un4={0};

   printf("*** \n");

   st0p = &st0;
   if (st0.i!=st0p->i || st0.c!=st0p->c)
       printf(" *** \n");
   else
       printf(" *** \n");

   un0p = &un0;
   if (un0.s!=un0p->s || un0.u!=un0p->u)
       printf(" *** \n");
   else
       printf(" *** \n");

   st1p = &st1;
   st1.i = -1;  st1.c = 127;
   if (st1.i!=-1 || st1.c!=127 || st1p->i!=-1 || st1p->c!=127)
       printf(" *** \n");
   else
       printf(" *** \n");

   un1p = &un1;
   un1.s = -1;
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

   st2[0][0].i = 1; st2[0][0].c = 2;
   st2[1][1].i = 0; st2[1][1].c = 0;
   st2[0][1] = st2[1][0];
   st2p = &st2[0][0];
   if (st2[0][0].i!=1 || st2[0][0].c!=2 ||
       st2[1][1].i!=0 || st2[1][1].c!=0 ||
       st2[0][1].i!=st2[1][0].i ||
       st2[0][1].c!=st2[1][0].c ||
       st2p->i!=1 || st2p->c!=2)
       printf(" *** \n");
   else
       printf(" *** \n");

   un2[0][0].s = 0;
   un2[0][1].s = 0;
   un2[1][0] = un2[1][1];
   un2p = &un2[0][0];
   if (un2[0][0].s!=0 || un2[0][0].u!=0 ||
       un2[0][1].s!=0 || un2[0][1].u!=0 ||
       un2[1][0].s!=un2[1][1].s ||
       un2[1][0].u!=un2[1][1].u ||
       un2p->s!=0 || un2p->u!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   st3[0][0][0] = st3[0][0][1];
   st3[1][1][1].i = 1;  st3[1][0][1].c = 2;
   st3p = &st3[1][1][1];
   if (st3[1][1][1].i!=1 || st3[1][0][1].c!=2 ||
       st3[0][0][0].i!=st3[0][0][1].i ||
       st3[0][0][0].c!=st3[0][0][1].c ||
       st3p->i!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   un3[0][1][0].s = 1;  un3[1][1][0].u = 2;
   un3[0][1][1] = un3[1][1][1];
   un3p = &un3[0][1][0];
   if (un3[0][1][0].s!=1 || un3[0][1][0].u!=1 ||
       un3[1][1][0].s!=2 || un3[1][1][0].u!=2 ||
       un3[0][1][1].s!=un3[1][1][1].s ||
       un3[0][1][1].u!=un3[1][1][1].u ||
       un3p->s!=1 || un3p->u!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   st4p2 = st4p = &st4;
   if (st4.i!=st4p->i || st4.c!=st4p->c ||
       st4.i!=st4p2->i || st4.c!=st4p2->c)
       printf(" *** \n");
   else
       printf(" *** \n");

   un4p2 = un4p = &un4;
   if (un4.s!=un4p->s || un4.u!=un4p->u ||
       un4.s!=un4p2->s || un4.u!=un4p2->u)
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
