#include<stdio.h>
int main()
{
   struct sttag1 *st1p2;
   struct sttag1 { int i; char c; } static *st1p,st1;
   union  untag1 *un1p2;
   union  untag1 { signed s; unsigned u; } static *un1p,un1;

   struct sttag2 volatile *st2p2;
   struct sttag2 { int i; char c; } volatile *st2p,st2;
   union  untag2 volatile *un2p2;
   union  untag2 { signed s; unsigned u; } volatile *un2p,un2;

   struct sttag3 const *st3p2;
   struct sttag3 { int i; char c; } const *st3p,st3={0,0};
   union  untag3 const *un3p2;
   union  untag3 { signed s; unsigned u; } const *un3p,un3={0};

   struct sttag4 *st4p2;
   struct sttag4 { int i; char c; } typedef *stptype,sttype;
   union  untag4 *un4p2;
   union  untag4 { signed s; unsigned u; } typedef *unptype,untype;
   stptype  st4p;     sttype  st4;
   unptype  un4p;     untype  un4;

   printf("*** \n");

   st1.c = 127;
   st1p2 = st1p = &st1;
   if (st1.i!=0 || st1.c!=127 || st1p->i!=0 || st1p->c!=127 ||
       st1p2->i!=0 || st1p2->c!=127)
       printf("");
   else
       printf(" *** \n");

   un1.s = -1;
   un1p2 = un1p = &un1;
#if INT64
   if (un1.s!=-1 || un1.u!=18446744073709551615 ||
       un1p->s!=-1 || un1p->u!=18446744073709551615 ||
       un1p2->s!=-1 || un1p2->u!=18446744073709551615)
       printf("");
#else
   if (un1.s!=-1 || un1.u!=4294967295 ||
       un1p->s!=-1 || un1p->u!=4294967295 ||
       un1p2->s!=-1 || un1p2->u!=4294967295)
       printf("");
#endif
       
   else
       printf(" *** \n");

   st2p2 = st2p = &st2;
   st2p->i = -1;  st2p2->c = 0;
   if (st2.i!=-1 || st2.c!=0 || st2p->i!=-1 || st2p->c!=0 ||
       st2p2->i!=-1 || st2p2->c!=0)
       printf("");
   else
       printf(" *** \n");

   un2p2 = un2p = &un2;
   un2p->s = -1;
#if INT64
   if (un2.s!=-1 || un2.u!=18446744073709551615 ||
       un2p->s!=-1 || un2p->u!=18446744073709551615 ||
       un2p2->s!=-1 || un2p2->u!=18446744073709551615)
       printf("");
#else
   if (un2.s!=-1 || un2.u!=4294967295 ||
       un2p->s!=-1 || un2p->u!=4294967295 ||
       un2p2->s!=-1 || un2p2->u!=4294967295)
       printf("");
#endif
       
   else
       printf(" *** \n");

   st3p2 = st3p = &st3;
   if (st3.i != st3p->i || st3.i!=st3p2->i ||
       st3.c != st3p->c || st3.c!=st3p2->c)
       printf("");
   else
       printf(" *** \n");

   un3p2 = un3p = &un3;
   if (un3.s != un3p->s || un3.s!=un3p2->s ||
       un3.u != un3p->u || un3.u!=un3p2->u)
       printf("");
   else
       printf(" *** \n");

   st4p2 = st4p = &st4;
   st4.i = st4.c = 0;
   if (st4.i!=0 || st4.c!=0 || st4p->i!=0 || st4p->c!=0 ||
       st4p2->i!=0 || st4p2->c!=0)
       printf("");
   else
       printf(" *** \n");

   un4p2 = un4p = &un4;
   un4.s = 0;
   if (un4.s!=0 || un4.u!=0 || un4p->s!=0 || un4p->u!=0 ||
       un4p2->s!=0 || un4p2->u!=0)
       printf("");
   else
       printf(" *** \n");

   printf("*** \n");
}
