#include<stdio.h>
int main()
{
   struct sttag1 *st1p;
   struct sttag1 { int i; char c; } static st1[2][2];
   union  untag1 *un1p;
   union  untag1 { signed s; unsigned u; } static un1[2][2];

   struct sttag2 volatile *st2p;
   struct sttag2 { int i; char c; } volatile st2[2][2];
   union  untag2 volatile *un2p;
   union  untag2 { signed s; unsigned u; } volatile un2[2][2];

   struct sttag3 const *st3p,*st3p2;
   struct sttag3 { int i; char c; } const st3[2][2]={{0,0},{0,0}};
   union  untag3 const *un3p,*un3p2;
   union  untag3 { signed s; unsigned u; } const un3[2][2]={0};

   struct sttag4 *st4p;
   struct sttag4 { int i; char c; } typedef sttype[2][2];
   union  untag4 *un4p;
   union  untag4 { signed s; unsigned u; } typedef untype[2][2];
   sttype  st4;
   untype  un4;

   printf("*** \n");

   st1p = &st1[1][1];
   st1[1][1].i = -1;  st1[1][0].c = 127;
   if (st1[0][0].i!=0 || st1[0][0].c!=0 ||
       st1[0][1].i!=0 || st1[0][1].c!=0 ||
       st1[1][0].i!=0 || st1[1][0].c!=127 ||
       st1[1][1].i!=-1 || st1[1][1].c!=0 ||
       st1p->i!=-1 || st1p->c!=0)
       printf("");
   else
       printf(" *** \n");

   un1[0][0].s = -1;
   un1[1][0].s = 1;
   un1p = &un1[0][0];
#if INT64
   if (un1[0][0].s!=-1 || un1[0][0].u!=18446744073709551615 ||
       un1[0][1].s!=0  || un1[0][1].u!=0 ||
       un1[1][0].s!=1  || un1[1][0].u!=1 ||
       un1[1][1].s!=0  || un1[1][1].u!=0 ||
       un1p->s!=-1 || un1p->u!=18446744073709551615)
        printf("");

#else
   if (un1[0][0].s!=-1 || un1[0][0].u!=4294967295 ||
       un1[0][1].s!=0  || un1[0][1].u!=0 ||
       un1[1][0].s!=1  || un1[1][0].u!=1 ||
       un1[1][1].s!=0  || un1[1][1].u!=0 ||
       un1p->s!=-1 || un1p->u!=4294967295)
        printf("");

#endif
       
   else
       printf(" *** \n");

   st2[0][0].i = -1;  st2[0][1].c = 127;
   st2[1][0].i = -1;  st2[1][1].c = 127;
   st2p = &st2[0][0];
   if (st2[0][0].i!=-1 || st2[0][1].c!=127 ||
       st2[1][0].i!=-1 || st2[1][1].c!=127 ||
       st2p->i!=-1 || st2[0][0].c!=st2p->c)
       printf("");
   else
       printf(" *** \n");

   un2[0][0].s = un2[1][0].s = 0;
   un2[0][1].s = -1;
   un2[1][1].s = 1;
   un2p = &un2[0][1];
#if INT64
   if (un2[0][0].s!=0  || un2[0][0].u!=0 ||
       un2[0][1].s!=-1 || un2[0][1].u!=18446744073709551615 ||
       un2[1][0].s!=0  || un2[1][0].u!=0 ||
       un2[1][1].s!=1  || un2[1][1].u!=1 ||
       un2p->s!=-1 || un2p->u!=18446744073709551615)
       printf("");
#else
   if (un2[0][0].s!=0  || un2[0][0].u!=0 ||
       un2[0][1].s!=-1 || un2[0][1].u!=4294967295 ||
       un2[1][0].s!=0  || un2[1][0].u!=0 ||
       un2[1][1].s!=1  || un2[1][1].u!=1 ||
       un2p->s!=-1 || un2p->u!=4294967295)
       printf("");
#endif
       
   else
       printf(" *** \n");

   st3p = &st3[0][1];
   st3p2 = &st3[1][0];
   if (st3[0][1].i!=st3p->i || st3[0][1].c!=st3p->c ||
       st3[1][0].i!=st3p2->i || st3[1][0].c!=st3p2->c)
       printf("");
       
   else
       printf(" *** \n");

   un3p = &un3[0][0];
   if (un3[0][0].s!=(signed)un3[0][0].u ||
       un3[0][1].s!=(signed)un3[0][1].u ||
       un3[1][0].s!=(signed)un3[1][0].u ||
       un3[1][1].s!=(signed)un3[1][1].u ||
       un3p->s!=un3[0][0].s || un3p->u!=un3[0][0].u)
       printf("");
       
   else
       printf(" *** \n");

   st4[0][0].i = 1;  st4[0][0].c = 2;
   st4[0][1].i = st4[0][0].i;
   st4[1][0].c = st4[0][0].c;
   st4p = &st4[0][0];
   if (st4[0][0].i!=1 || st4[0][0].c!=2 ||
       st4[0][1].i!=1 || st4[1][0].c!=2 ||
       st4p->i!=1 || st4p->c!=2)
       printf("");
       
   else
       printf(" *** \n");

   un4[1][1].u = un4[0][0].s = -1;
   un4[0][1].s = un4[0][0].s;
   un4[1][0].u = un4[0][0].u;
   un4p = &un4[1][1];
#if INT64
   if (un4[0][0].s!=-1 || un4[0][0].u!=18446744073709551615 ||
       un4[0][1].s!=-1 || un4[0][1].u!=18446744073709551615 ||
       un4[1][0].s!=-1 || un4[1][0].u!=18446744073709551615 ||
       un4[1][1].s!=-1 || un4[1][1].u!=18446744073709551615 ||
       un4p->s!=-1 || un4p->u!=18446744073709551615)
       printf("");
#else
   if (un4[0][0].s!=-1 || un4[0][0].u!=4294967295 ||
       un4[0][1].s!=-1 || un4[0][1].u!=4294967295 ||
       un4[1][0].s!=-1 || un4[1][0].u!=4294967295 ||
       un4[1][1].s!=-1 || un4[1][1].u!=4294967295 ||
       un4p->s!=-1 || un4p->u!=4294967295)
       printf("");
#endif
       
   else
       printf(" *** \n");

   printf("*** \n");
}
