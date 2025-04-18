#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
   struct { int i; char c; } static st1={0};
   union  { signed s; unsigned u; } static un1={0};
   enum   { en01, en02 } static en1={en01};
 
   struct { int i; char c; } volatile st2={0};
   union  { signed s; unsigned u; } volatile un2={0};
   enum   { en03, en04 } volatile en2={en03};
 
   struct { int i; char c; } const st3={0};
   union  { signed s; unsigned u; } const un3={0};
   enum   { en05, en06 } const en3=0;
 
   struct { int i; char c; } typedef sttype;
   union  { signed s; unsigned u; } typedef untype;
   enum   { en07, en08 } typedef entype;
   sttype  st4={0};
   untype  un4={0};
   entype  en4={en07};
 
   const int *ip;
   const char *cp;
   const signed *sp;
 
   printf("*** CATEGORY ** TEST FOR DCL ** STARTED ***\n");
 
   st1.i = 0;
   st1.c = 127;
   if (st1.i!=0 || st1.c!=127)
       printf(" *** CATEGORY TEST-01 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-01 OK ***\n");
 
   un1.s = -1;
   if (un1.s!=-1 || un1.u!=4294967295)
       printf(" *** CATEGORY TEST-02 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-02 OK ***\n");
 
   en1 = en02;
   if (en1!=1 || en01!=0 || en02!=1)
       printf(" *** CATEGORY TEST-03 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-03 OK ***\n");
 
   st2.i = -1;  st2.c = 0;
   if (st2.i!=-1 || st2.c!=0)
       printf(" *** CATEGORY TEST-04 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-04 OK ***\n");
 
   un2.s = 0;
   if (un2.s!=0 || un2.u!=0)
       printf(" *** CATEGORY TEST-05 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-05 OK ***\n");
 
   en2 = en03;
   if (en2!=0 || en03!=0 || en04!=1)
       printf(" *** CATEGORY TEST-06 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-06 OK ***\n");
 
   ip = &st3.i;  cp = &st3.c;
   if (st3.i!=*ip || st3.c!=*cp)
       printf(" *** CATEGORY TEST-07 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-07 OK ***\n");
 
   sp = &un3.s;
   if (un3.s!=*sp || un3.u!=(unsigned)*sp)
       printf(" *** CATEGORY TEST-08 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-08 OK ***\n");
 
   if (en3!=en05 || en05!=0 || en06!=1)
       printf(" *** CATEGORY TEST-09 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-09 OK ***\n");
 
   st4.i = 1;  st4.c = 2;
   if (st4.i!=1 || st4.c!=2)
       printf(" *** CATEGORY TEST-10 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-10 OK ***\n");
 
   un4.s = -1;
   if (un4.s!=-1 || un4.u!=4294967295)
       printf(" *** CATEGORY TEST-11 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-11 OK ***\n");
 
   en4 = en08;
   if (en4!=1 || en07!=0 || en08!=1)
       printf(" *** CATEGORY TEST-12 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-12 OK ***\n");
 
   printf("*** CATEGORY TEST ENDED ***\n");
exit (0);
}
