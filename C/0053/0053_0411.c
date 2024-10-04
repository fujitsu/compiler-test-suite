#include<stdio.h>

 struct sttag1 { int i; char c; } static *st1p,st1;
 union  untag1 { signed s; unsigned u; } static *un1p,un1;
 enum   entag1 { en01, en02 } static *en1p,en1;

 struct sttag2 { int i; char c; } volatile *st2p,st2;
 union  untag2 { signed s; unsigned u; } volatile *un2p,un2;
 enum   entag2 { en03, en04 } volatile *en2p,en2;

 struct sttag3 { int i; char c; } const *st3;
 union  untag3 { signed s; unsigned u; } const *un3;
 enum   entag3 { en05, en06 } const *en3;

 struct sttag4 { int i; char c; } typedef *stptype,sttype;
 union  untag4 { signed s; unsigned u; } typedef *unptype,untype;
 enum   entag4 { en07, en08 } typedef *enptype,entype;
 stptype  st4p;     sttype  st4;
 unptype  un4p;     untype  un4;
 enptype  en4p;     entype  en4;
int main()
{
   printf("*** \n");

   st1.c = 127;
   st1p = &st1;
   if (st1.i!=0 || st1.c!=127 || st1p->i!=0 || st1p->c!=127)
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

   en1 = en02;
   en1p = &en1;
   if (en1!=1 || *en1p!=1 || en01!=0 || en02!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   st2p = &st2;
   st2p->i = -1;
   if (st2.i!=-1 || st2.c!=0 || st2p->i!=-1 || st2p->c!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   un2p = &un2;
   un2p->s = -1;
#if INT64
   if (un2.s!=-1 || un2.u!=18446744073709551615 ||
       un2p->s!=-1 || un2p->u!=18446744073709551615)
#else
   if (un2.s!=-1 || un2.u!=4294967295 ||
       un2p->s!=-1 || un2p->u!=4294967295)
#endif
       printf(" *** \n");
   else
       printf(" *** \n");

   en2p = &en2;
   *en2p = en04;
   if (en2!=1 || *en2p!=1 || en03!=0 || en04!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (st3!=0 || un3!=0 || en3!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   st4p = &st4;
   if (st4.i!=0 || st4.c!=0 || st4p->i!=0 || st4p->c!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   un4p = &un4;
   if (un4.s!=0 || un4.u!=0 || un4p->s!=0 || un4p->u!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   en4p = &en4;
   if (en4!=0 || *en4p!=0 || en07!=0 || en08!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
