#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
 struct sttag1 { int i; char c; } static st1;
 union  untag1 { signed s; unsigned u; } static un1;
 enum   entag1 { en01, en02 } static en1;
 
 struct sttag2 { int i; char c; } volatile st2;
 union  untag2 { signed s; unsigned u; } volatile un2;
 enum   entag2 { en03, en04 } volatile en2;
 
 struct sttag3 { int i; char c; } const st3;
 union  untag3 { signed s; unsigned u; } const un3;
 enum   entag3 { en05, en06 } const en3;
 
 struct sttag4 { int i; char c; } typedef sttype;
 union  untag4 { signed s; unsigned u; } typedef untype;
 enum   entag4 { en07, en08 } typedef entype;
 sttype  st4;
 untype  un4;
 entype  en4;
int main()
{
   printf("*** CATEGORY ** TEST FOR DCL ** STARTED ***\n");
 
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
 
   st2.i = -1;
   if (st2.i!=-1 || st2.c!=0)
       printf(" *** CATEGORY TEST-04 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-04 OK ***\n");
 
   if (un2.s!=0 || un2.u!=0)
       printf(" *** CATEGORY TEST-05 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-05 OK ***\n");
 
   en2 = en03;
   if (en2!=0 || en03!=0 || en04!=1)
       printf(" *** CATEGORY TEST-06 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-06 OK ***\n");
 
   if (st3.i!=0 || st3.c!=0)
       printf(" *** CATEGORY TEST-07 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-07 OK ***\n");
 
   if (un3.s!=0 || un3.u!=0)
       printf(" *** CATEGORY TEST-08 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-08 OK ***\n");
 
   if (en3!=0 || en05!=0 || en06!=1)
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
