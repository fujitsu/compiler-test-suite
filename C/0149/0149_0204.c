#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
   struct { int i; char c; } static *st1p,st1;
   union  { signed s; unsigned u; } static *un1p,un1;
   enum   { en01, en02 } static *en1p,en1;
 
   struct { int i; char c; } volatile *st2p,st2;
   union  { signed s; unsigned u; } volatile *un2p,un2;
   enum   { en03, en04 } volatile *en2p,en2;
 
   struct { int i; char c; } const *st3p=NULL, st3={0};
   union  { signed s; unsigned u; } const *un3p=NULL, un3={0};
   enum   { en05, en06 } const *en3p=NULL, en3={en05};
 
   struct { int i; char c; } typedef *stptype,sttype;
   union  { signed s; unsigned u; } typedef *unptype,untype;
   enum   { en07, en08 } typedef *enptype,entype;
   stptype  st4p=NULL;     sttype  st4={0};
   unptype  un4p=NULL;     untype  un4={0};
   enptype  en4p=NULL;     entype  en4={en07};
 
   printf("*** CATEGORY ** TEST FOR DCL ** STARTED ***\n");
 
   st1.c = 127;
   st1p = &st1;
   if (st1.i!=0 || st1.c!=127 || st1p->i!=0 || st1p->c!=127)
       printf(" *** CATEGORY TEST-01 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-01 OK ***\n");
 
   un1.s = -1;
   un1p = &un1;
   if (un1.s!=-1 || un1.u!=4294967295 ||
       un1p->s!=-1 || un1p->u!=4294967295)
       printf(" *** CATEGORY TEST-02 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-02 OK ***\n");
 
   en1 = en02;
   en1p = &en1;
   if (en1!=1 || *en1p!=1 || en01!=0 || en02!=1)
       printf(" *** CATEGORY TEST-03 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-03 OK ***\n");
 
   st2p = &st2;
   st2p->i = -1;
   if (st2.i!=-1 || st2.c!=st2p->c || st2p->i!=-1)
       printf(" *** CATEGORY TEST-04 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-04 OK ***\n");
 
   un2p = &un2;
   un2p->s = -1;
   if (un2.s!=-1 || un2.u!=4294967295 ||
       un2p->s!=-1 || un2p->u!=4294967295)
       printf(" *** CATEGORY TEST-05 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-05 OK ***\n");
 
   en2p = &en2;
   *en2p = en04;
   if (en2!=1 || *en2p!=1 || en03!=0 || en04!=1)
       printf(" *** CATEGORY TEST-06 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-06 OK ***\n");
 
   st3p = &st3;
   if (st3.i!=st3p->i || st3.c!=st3p->c)
       printf(" *** CATEGORY TEST-07 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-07 OK ***\n");
 
   un3p = &un3;
   if (un3.s!=un3p->s || un3.u!=un3p->u)
       printf(" *** CATEGORY TEST-08 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-08 OK ***\n");
 
   en3p = &en3;
   if (en3!=*en3p)
       printf(" *** CATEGORY TEST-09 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-09 OK ***\n");
 
   st4p = &st4;
   if (st4.i!=st4p->i || st4.c!=st4p->c)
       printf(" *** CATEGORY TEST-10 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-10 OK ***\n");
 
   un4p = &un4;
   if (un4.s!=un4p->s || un4.u!=un4p->u)
       printf(" *** CATEGORY TEST-11 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-11 OK ***\n");
 
   en4p = &en4;
   if (en4!=*en4p || en07!=0 || en08!=1)
       printf(" *** CATEGORY TEST-12 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-12 OK ***\n");
 
   printf("*** CATEGORY TEST ENDED ***\n");
exit (0);
}
