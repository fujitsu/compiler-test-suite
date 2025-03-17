#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
   struct sttag1 *st1p2=NULL;
   struct sttag1 { int i; char c; } static *st1p=NULL, st1={0};
   union  untag1 *un1p2=NULL;
   union  untag1 { signed s; unsigned u; } static *un1p=NULL, un1={0};
 
   struct sttag2 volatile *st2p2=NULL;
   struct sttag2 { int i; char c; } volatile *st2p=NULL, st2={0};
   union  untag2 volatile *un2p2=NULL;
   union  untag2 { signed s; unsigned u; } volatile *un2p=NULL, un2={0};
 
   struct sttag3 const *st3p2=NULL;
   struct sttag3 { int i; char c; } const *st3p=NULL, st3={0};
   union  untag3 const *un3p2=NULL;
   union  untag3 { signed s; unsigned u; } const *un3p=NULL, un3={0};
 
   struct sttag4 *st4p2=NULL;
   struct sttag4 { int i; char c; } typedef *stptype,sttype;
   union  untag4 *un4p2=NULL;
   union  untag4 { signed s; unsigned u; } typedef *unptype,untype;
   stptype  st4p=NULL;     sttype  st4={0};
   unptype  un4p=NULL;     untype  un4={0};
 
   printf("*** CATEGORY ** TEST FOR DCL ** STARTED ***\n");
 
   st1.c = 127;
   st1p2 = st1p = &st1;
   if (st1.i!=0 || st1.c!=127 || st1p->i!=0 || st1p->c!=127 ||
       st1p2->i!=0 || st1p2->c!=127)
       printf(" *** CATEGORY TEST-01 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-01 OK ***\n");
 
   un1.s = -1;
   un1p2 = un1p = &un1;
   if (un1.s!=-1 || un1.u!=4294967295 ||
       un1p->s!=-1 || un1p->u!=4294967295 ||
       un1p2->s!=-1 || un1p2->u!=4294967295)
       printf(" *** CATEGORY TEST-02 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-02 OK ***\n");
 
   st2p2 = st2p = &st2;
   st2p->i = -1;  st2p2->c = 0;
   if (st2.i!=-1 || st2.c!=0 || st2p->i!=-1 || st2p->c!=0 ||
       st2p2->i!=-1 || st2p2->c!=0)
       printf(" *** CATEGORY TEST-03 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-03 OK ***\n");
 
   un2p2 = un2p = &un2;
   un2p->s = -1;
   if (un2.s!=-1 || un2.u!=4294967295 ||
       un2p->s!=-1 || un2p->u!=4294967295 ||
       un2p2->s!=-1 || un2p2->u!=4294967295)
       printf(" *** CATEGORY TEST-04 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-04 OK ***\n");
 
   st3p2 = st3p = &st3;
   if (st3.i != st3p->i || st3.i!=st3p2->i ||
       st3.c != st3p->c || st3.c!=st3p2->c)
       printf(" *** CATEGORY TEST-05 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-05 OK ***\n");
 
   un3p2 = un3p = &un3;
   if (un3.s != un3p->s || un3.s!=un3p2->s ||
       un3.u != un3p->u || un3.u!=un3p2->u)
       printf(" *** CATEGORY TEST-06 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-06 OK ***\n");
 
   st4p2 = st4p = &st4;
   st4.i = st4.c = 0;
   if (st4.i!=0 || st4.c!=0 || st4p->i!=0 || st4p->c!=0 ||
       st4p2->i!=0 || st4p2->c!=0)
       printf(" *** CATEGORY TEST-07 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-07 OK ***\n");
 
   un4p2 = un4p = &un4;
   un4.s = 0;
   if (un4.s!=0 || un4.u!=0 || un4p->s!=0 || un4p->u!=0 ||
       un4p2->s!=0 || un4p2->u!=0)
       printf(" *** CATEGORY TEST-08 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-08 OK ***\n");
 
   printf("*** CATEGORY TEST ENDED ***\n");
exit (0);
}
