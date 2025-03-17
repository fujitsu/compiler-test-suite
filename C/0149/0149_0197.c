#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
 struct sttag1 { int i; char c; } static st1[2][2];
 union  untag1 { signed s; unsigned u; } static un1[2][2];
 enum   entag1 { en01, en02 } static en1[2][2];
 
 struct sttag2 { int i; char c; } volatile st2[2][2];
 union  untag2 { signed s; unsigned u; } volatile un2[2][2];
 enum   entag2 { en03, en04 } volatile en2[2][2];
 
 struct sttag3 { int i; char c; } const st3[2][2];
 union  untag3 { signed s; unsigned u; } const un3[2][2];
 enum   entag3 { en05, en06 } const en3[2][2];
 
 struct sttag4 { int i; char c; } typedef sttype[2][2];
 union  untag4 { signed s; unsigned u; } typedef untype[2][2];
 enum   entag4 { en07, en08 } typedef entype[2][2];
 sttype  st4;
 untype  un4;
 entype  en4;
int main()
{
   printf("*** CATEGORY ** TEST FOR DCL ** STARTED ***\n");
 
   st1[1][1].i = -1;  st1[1][0].c = 127;
   if (st1[0][0].i!=0 || st1[0][0].c!=0 ||
       st1[0][1].i!=0 || st1[0][1].c!=0 ||
       st1[1][0].i!=0 || st1[1][0].c!=127 ||
       st1[1][1].i!=-1 || st1[1][1].c!=0)
       printf(" *** CATEGORY TEST-01 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-01 OK ***\n");
 
   un1[0][0].s = -1;
   un1[1][0].s = 1;
   if (un1[0][0].s!=-1 || un1[0][0].u!=4294967295 ||
       un1[0][1].s!=0  || un1[0][1].u!=0 ||
       un1[1][0].s!=1  || un1[1][0].u!=1 ||
       un1[1][1].s!=0  || un1[1][1].u!=0)
       printf(" *** CATEGORY TEST-02 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-02 OK ***\n");
 
   en1[1][0] = en1[0][1] = en02;
   if (en1[0][0]!=0 || en1[0][1]!=1 ||
       en1[1][0]!=1 || en1[1][1]!=0 ||
       en01!=0 || en02!=1)
       printf(" *** CATEGORY TEST-03 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-03 OK ***\n");
 
   st2[0][0].i = -1;  st2[0][1].c = 127;
   if (st2[0][0].i!=-1 || st2[0][0].c!=0 ||
       st2[0][1].i!=0 || st2[0][1].c!=127 ||
       st2[1][0].i!=0 || st2[1][0].c!=0 ||
       st2[1][1].i!=0 || st2[1][1].c!=0)
       printf(" *** CATEGORY TEST-04 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-04 OK ***\n");
 
   un2[0][1].s = -1;
   un2[1][1].s = 1;
   if (un2[0][0].s!=0  || un2[0][0].u!=0 ||
       un2[0][1].s!=-1 || un2[0][1].u!=4294967295 ||
       un2[1][0].s!=0  || un2[1][0].u!=0 ||
       un2[1][1].s!=1  || un2[1][1].u!=1)
       printf(" *** CATEGORY TEST-05 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-05 OK ***\n");
 
   en2[0][0] = en2[1][1] = en04;
   if (en2[0][0]!=1 || en2[0][1]!=0 ||
       en2[1][0]!=0 || en2[1][1]!=1 ||
       en03!=0 || en04!=1)
       printf(" *** CATEGORY TEST-06 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-06 OK ***\n");
 
   if (st3[0][0].i!=0 || st3[0][0].c!=0 ||
       st3[0][1].i!=0 || st3[0][1].c!=0 ||
       st3[1][0].i!=0 || st3[1][0].c!=0 ||
       st3[1][1].i!=0 || st3[1][1].c!=0)
       printf(" *** CATEGORY TEST-07 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-07 OK ***\n");
 
   if (un3[0][0].s!=0 || un3[0][0].u!=0 ||
       un3[0][1].s!=0 || un3[0][1].u!=0 ||
       un3[1][0].s!=0 || un3[1][0].u!=0 ||
       un3[1][1].s!=0 || un3[1][1].u!=0)
       printf(" *** CATEGORY TEST-08 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-08 OK ***\n");
 
   if (en3[0][0]!=0 || en3[0][1]!=0 ||
       en3[1][0]!=0 || en3[1][1]!=0 ||
       en05!=0 || en06!=1)
       printf(" *** CATEGORY TEST-09 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-09 OK ***\n");
 
   st4[0][0].i = 1;  st4[0][0].c = 2;
   st4[0][1].i = st4[0][0].i;
   st4[1][0].c = st4[0][0].c;
   st4[1][1].i = st4[0][0].i;
   st4[1][1].c = st4[0][0].c;
   if (st4[0][0].i!=1 || st4[0][0].c!=2 ||
       st4[0][1].i!=1 || st4[0][1].c!=0 ||
       st4[1][0].i!=0 || st4[1][0].c!=2 ||
       st4[1][1].i!=1 || st4[1][1].c!=2)
       printf(" *** CATEGORY TEST-10 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-10 OK ***\n");
 
   un4[0][0].s = -1;
   un4[0][1].s = un4[0][0].s;
   un4[1][0].u = un4[0][0].u;
   un4[1][1].s = un4[0][0].s;
   if (un4[0][0].s!=-1 || un4[0][0].u!=4294967295 ||
       un4[0][1].s!=-1 || un4[0][1].u!=4294967295 ||
       un4[1][0].s!=-1 || un4[1][0].u!=4294967295 ||
       un4[1][1].s!=-1 || un4[1][1].u!=4294967295)
       printf(" *** CATEGORY TEST-11 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-11 OK ***\n");
 
   en4[0][0] = en08;
   en4[0][1] = en07;
   en4[1][1] = en4[0][0];
   if (en4[0][0]!=1 || en4[0][1]!=0 ||
       en4[1][0]!=0 || en4[1][1]!=1 ||
       en07!=0 || en08!=1)
       printf(" *** CATEGORY TEST-12 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-12 OK ***\n");
 
   printf("*** CATEGORY TEST ENDED ***\n");
exit (0);
}
