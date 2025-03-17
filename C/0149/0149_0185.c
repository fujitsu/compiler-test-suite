#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
 struct { int i; char c; } st1;
 union  { signed s; unsigned u; } un1;
 enum   { en01, en02 } en1;
 
 struct { int i; char c; } st2[2][2];
 union  { signed s; unsigned u; } un2[2][2];
 enum   { en03, en04 } en2[2][2];
 
 struct { int i; char c; } st3[2][2][2];
 union  { signed s; unsigned u; } un3[2][2][2];
 enum   { en05, en06 } en3[2][2][2];
 
 struct { int i; char c; } *st4;
 union  { signed s; unsigned u; } *un4;
 enum   { en07, en08 } *en4;
int main()
{
   printf("*** CATEGORY ** TEST FOR DCL ** STARTED ***\n");
 
   st1.i = -1;
   if (st1.i!=-1 || st1.c!=0)
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
 
   if (st2[0][0].i!=0 || st2[0][0].c!=0 ||
       st2[0][1].i!=0 || st2[0][1].c!=0 ||
       st2[0][0].i!=st2[1][0].i ||
       st2[0][0].c!=st2[1][0].c ||
       st2[0][0].i!=st2[1][1].i ||
       st2[0][0].c!=st2[1][1].c)
       printf(" *** CATEGORY TEST-04 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-04 OK ***\n");
 
   if (un2[0][0].s!=0 || un2[0][0].u!=0 ||
       un2[0][1].s!=0 || un2[0][1].u!=0 ||
       un2[0][0].s!=un2[1][0].s ||
       un2[0][0].u!=un2[1][0].u ||
       un2[0][1].s!=un2[1][1].s ||
       un2[0][1].u!=un2[1][1].u)
       printf(" *** CATEGORY TEST-05 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-05 OK ***\n");
 
   en2[0][1] = en03;
   en2[1][1] = en04;
   en2[0][0] = en2[0][1];
   en2[1][0] = en2[1][1];
   if (en2[0][0]!=0 || en2[1][0]!=1)
       printf(" *** CATEGORY TEST-06 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-06 OK ***\n");
 
   if (st3[0][0][0].i!=0 || st3[0][0][0].c!=0 ||
       st3[0][0][0].i!=st3[1][1][1].i ||
       st3[0][0][0].c!=st3[1][1][1].c ||
       st3[0][1][0].i!=st3[1][0][1].i ||
       st3[0][1][0].c!=st3[1][0][1].c)
       printf(" *** CATEGORY TEST-07 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-07 OK ***\n");
 
   if (un3[0][0][0].s!=0 || un3[0][0][0].u!=0 ||
       un3[0][0][0].s!=un3[1][0][1].s ||
       un3[0][0][0].u!=un3[1][0][1].u ||
       un3[0][1][0].s!=un3[1][1][1].s ||
       un3[0][1][0].u!=un3[1][1][1].u)
       printf(" *** CATEGORY TEST-08 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-08 OK ***\n");
 
   en3[0][1][0] = en06;
   en3[1][0][0] = en3[0][1][0];
   if (en3[0][0][0]!=0 ||
       en3[0][1][0]!=1 ||
       en3[1][0][0]!=1 ||
       en3[1][1][1]!=0)
       printf(" *** CATEGORY TEST-09 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-09 OK ***\n");
 
   if (st4!=0 || un4!=0 || en4!=0)
       printf(" *** CATEGORY TEST-10 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-10 OK ***\n");
 
   printf("*** CATEGORY TEST ENDED ***\n");
exit (0);
}
