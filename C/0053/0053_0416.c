#include<stdio.h>
int main()
{
   struct { int i; char c; } static *st1p,st1;
   union  { signed s; unsigned u; } static *un1p,un1;
   enum   { en01, en02 } static *en1p,en1;

   struct { int i; char c; } volatile *st2p,st2;
   union  { signed s; unsigned u; } volatile *un2p,un2;
   enum   { en03, en04 } volatile *en2p,en2;

   struct { int i; char c; } const *st3p=NULL, st3={0,0};
   union  { signed s; unsigned u; } const *un3p=NULL, un3={0};
   enum   { en05, en06 } const *en3p=NULL, en3={en05};

   struct { int i; char c; } typedef *stptype,sttype;
   union  { signed s; unsigned u; } typedef *unptype,untype;
   enum   { en07, en08 } typedef *enptype,entype;
   stptype  st4p;     sttype  st4={0,0};
   unptype  un4p;     untype  un4={0};
   enptype  en4p;     entype  en4={en07};

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
   if (st2.i!=-1 || st2.c!=st2p->c || st2p->i!=-1)
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

   st3p = &st3;
   if (st3.i!=st3p->i || st3.c!=st3p->c)
       printf(" *** \n");
   else
       printf(" *** \n");

   un3p = &un3;
   if (un3.s!=un3p->s || un3.u!=un3p->u)
       printf(" *** \n");
   else
       printf(" *** \n");

   en3p = &en3;
   if (en3!=*en3p)
       printf(" *** \n");
   else
       printf(" *** \n");

   st4p = &st4;
   if (st4.i!=st4p->i || st4.c!=st4p->c)
       printf(" *** \n");
   else
       printf(" *** \n");

   un4p = &un4;
   if (un4.s!=un4p->s || un4.u!=un4p->u)
       printf(" *** \n");
   else
       printf(" *** \n");

   en4p = &en4;
   if (en4!=*en4p || en07!=0 || en08!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}