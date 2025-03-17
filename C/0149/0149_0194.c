#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
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
   st2p->i = -1;
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
 
   if (st3p!=0 || un3p!=0 || st3p2!=0 || un3p2!=0)
       printf(" *** CATEGORY TEST-05 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-05 OK ***\n");
 
   st4p2 = st4p = &st4;
   if (st4.i!=0 || st4.c!=0 || st4p->i!=0 || st4p->c!=0 ||
       st4p2->i!=0 || st4p2->c!=0)
       printf(" *** CATEGORY TEST-06 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-06 OK ***\n");
 
   un4p2 = un4p = &un4;
   if (un4.s!=0 || un4.u!=0 || un4p->s!=0 || un4p->u!=0 ||
       un4p2->s!=0 || un4p2->u!=0)
       printf(" *** CATEGORY TEST-07 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-07 OK ***\n");
 
   printf("*** CATEGORY TEST ENDED ***\n");
exit (0);
}
