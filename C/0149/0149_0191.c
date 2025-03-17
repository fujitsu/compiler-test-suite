#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
 struct sttag1 *st1p;
 struct sttag1 { int i; char c; } static st1;
 union  untag1 *un1p;
 union  untag1 { signed s; unsigned u; } static un1;
 
 struct sttag2 volatile *st2p;
 struct sttag2 { int i; char c; } volatile st2;
 union  untag2 volatile *un2p;
 union  untag2 { signed s; unsigned u; } volatile un2;
 
 struct sttag3 *st3p;
 struct sttag3 { int i; char c; } const st3;
 union  untag3 *un3p;
 union  untag3 { signed s; unsigned u; } const un3;
 
 struct sttag4 *st4p;
 struct sttag4 { int i; char c; } typedef sttype;
 union  untag4 *un4p;
 union  untag4 { signed s; unsigned u; } typedef untype;
 sttype  st4;
 untype  un4;
int main()
{
   printf("*** CATEGORY ** TEST FOR DCL ** STARTED ***\n");
 
   st1p = &st1;
   st1.c = 127;
   if (st1.i!=0 || st1.c!=127 || st1p->i!=0 || st1p->c!=127)
       printf(" *** CATEGORY TEST-01 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-01 OK ***\n");
 
   un1p = &un1;
   un1.s = -1;
   if (un1.s!=-1 || un1.u!=4294967295 ||
       un1p->s!=-1 || un1p->u!=4294967295)
       printf(" *** CATEGORY TEST-02 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-02 OK ***\n");
 
   st2.i = -1;
   st2p = &st2;
   if (st2.i!=-1 || st2.c!=0 || st2p->i!=-1 || st2p->c!=0)
       printf(" *** CATEGORY TEST-03 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-03 OK ***\n");
 
   un2p = &un2;
   if (un2.s!=0 || un2.u!=0 || un2p->s!=0 || un2p->u!=0)
       printf(" *** CATEGORY TEST-04 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-04 OK ***\n");
 
   if (st3.i!=0 || st3.c!=0 || st3p!=0)
       printf(" *** CATEGORY TEST-05 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-05 OK ***\n");
 
   if (un3.s!=0 || un3.u!=0 || un3p!=0)
       printf(" *** CATEGORY TEST-06 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-06 OK ***\n");
 
   st4p = &st4;
   st4.i = 1;  st4.c = 2;
   if (st4.i!=1 || st4.c!=2 || st4p->i!=1 || st4p->c!=2)
       printf(" *** CATEGORY TEST-07 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-07 OK ***\n");
 
   un4p = &un4;
   un4.s = -1;
   if (un4.s!=-1 || un4.u!=4294967295 ||
       un4p->s!=-1 || un4p->u!=4294967295)
       printf(" *** CATEGORY TEST-08 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-08 OK ***\n");
 
   printf("*** CATEGORY TEST ENDED ***\n");
exit (0);
}
