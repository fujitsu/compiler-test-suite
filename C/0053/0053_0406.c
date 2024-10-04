#include<stdio.h>

 struct sttag1 *st1p2;
 struct sttag1 { int i; char c; } static *st1p,st1;
 union  untag1 *un1p2;
 union  untag1 { signed s; unsigned u; } static *un1p,un1;

 struct sttag2 volatile *st2p2;
 struct sttag2 { int i; char c; } volatile *st2p,st2;
 union  untag2 volatile *un2p2;
 union  untag2 { signed s; unsigned u; } volatile *un2p,un2;

 struct sttag3 *st3p2;
 struct sttag3 { int i; char c; } const *st3p;
 union  untag3 *un3p2;
 union  untag3 { signed s; unsigned u; } const *un3p;

 struct sttag4 *st4p2;
 struct sttag4 { int i; char c; } typedef *stptype,sttype;
 union  untag4 *un4p2;
 union  untag4 { signed s; unsigned u; } typedef *unptype,untype;
 stptype  st4p;     sttype  st4;
 unptype  un4p;     untype  un4;
int main()
{
   printf("*** \n");

   st1.c = 127;
   st1p2 = st1p = &st1;
   if (st1.i!=0 || st1.c!=127 || st1p->i!=0 || st1p->c!=127 ||
       st1p2->i!=0 || st1p2->c!=127)
       printf(" *** \n");
   else
       printf(" *** \n");

   un1.s = -1;
   un1p2 = un1p = &un1;
#if INT64
   if (un1.s!=-1 || un1.u!=18446744073709551615 ||
       un1p->s!=-1 || un1p->u!=18446744073709551615 ||
       un1p2->s!=-1 || un1p2->u!=18446744073709551615)
#else
   if (un1.s!=-1 || un1.u!=4294967295 ||
       un1p->s!=-1 || un1p->u!=4294967295 ||
       un1p2->s!=-1 || un1p2->u!=4294967295)
#endif
       printf(" *** \n");
   else
       printf(" *** \n");

   st2p2 = st2p = &st2;
   st2p->i = -1;
   if (st2.i!=-1 || st2.c!=0 || st2p->i!=-1 || st2p->c!=0 ||
       st2p2->i!=-1 || st2p2->c!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   un2p2 = un2p = &un2;
   un2p->s = -1;
#if INT64
   if (un2.s!=-1 || un2.u!=18446744073709551615 ||
       un2p->s!=-1 || un2p->u!=18446744073709551615 ||
       un2p2->s!=-1 || un2p2->u!=18446744073709551615)
#else
   if (un2.s!=-1 || un2.u!=4294967295 ||
       un2p->s!=-1 || un2p->u!=4294967295 ||
       un2p2->s!=-1 || un2p2->u!=4294967295)
#endif
       printf(" *** \n");
   else
       printf(" *** \n");

   if (st3p!=0 || un3p!=0 || st3p2!=0 || un3p2!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   st4p2 = st4p = &st4;
   if (st4.i!=0 || st4.c!=0 || st4p->i!=0 || st4p->c!=0 ||
       st4p2->i!=0 || st4p2->c!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   un4p2 = un4p = &un4;
   if (un4.s!=0 || un4.u!=0 || un4p->s!=0 || un4p->u!=0 ||
       un4p2->s!=0 || un4p2->u!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
