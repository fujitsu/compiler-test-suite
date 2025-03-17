#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
   struct { int i; char c; } st1={0};
   union  { signed s; unsigned u; } un1={0};
   enum   { en01, en02 } en1={en01};
 
   static struct { int i; char c; } st2[2][2]={0};
   static union  { signed s; unsigned u; } un2[2][2]={0};
   enum   { en03, en04 } en2[2][2]={en03};
 
   static struct { int i; char c; } st3[2][2][2]={0};
   static union  { signed s; unsigned u; } un3[2][2][2]={0};
   enum   { en05, en06 } en3[2][2][2]={en05};
 
   struct { int i; char c; } *st4p=NULL, st4={0};
   union  { signed s; unsigned u; } *un4p=NULL, un4={0};
   enum   { en07, en08 } *en4p=NULL, en4={en07};
 
   printf("*** CATEGORY ** TEST FOR DCL ** STARTED ***\n");
 
   st1.i = -1;  st1.c = 127;
   if (st1.i!=-1 || st1.c!=127)
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
 
   st2[0][0].i = 1; st2[0][0].c = 2;
   st2[1][1].i = 0; st2[1][1].c = 0;
   st2[0][1] = st2[1][0];
   if (st2[0][0].i!=1 || st2[0][0].c!=2 ||
       st2[1][1].i!=0 || st2[1][1].c!=0 ||
       st2[0][1].i!=st2[1][0].i ||
       st2[0][1].c!=st2[1][0].c)
       printf(" *** CATEGORY TEST-04 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-04 OK ***\n");
 
   un2[0][0].s = 0;
   un2[0][1].s = 0;
   un2[1][0] = un2[1][1];
   if (un2[0][0].s!=0 || un2[0][0].u!=0 ||
       un2[0][1].s!=0 || un2[0][1].u!=0 ||
       un2[1][0].s!=un2[1][1].s ||
       un2[1][0].u!=un2[1][1].u)
       printf(" *** CATEGORY TEST-05 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-05 OK ***\n");
 
   en2[0][1] = en03;
   en2[1][1] = en04;
   en2[0][0] = en2[0][1];
   en2[1][0] = en2[1][1];
   if (en2[0][0]!=0 || en2[1][0]!=1 ||
       en2[0][1]!=0 || en2[1][1]!=1)
       printf(" *** CATEGORY TEST-06 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-06 OK ***\n");
 
   st3[0][0][0] = st3[0][0][1];
   st3[1][1][1].i = 1;  st3[1][0][1].c = 2;
   if (st3[1][1][1].i!=1 || st3[1][0][1].c!=2 ||
       st3[0][0][0].i!=st3[0][0][1].i ||
       st3[0][0][0].c!=st3[0][0][1].c)
       printf(" *** CATEGORY TEST-07 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-07 OK ***\n");
 
   un3[0][1][0].s = 1;  un3[1][1][0].u = 2;
   un3[0][1][1] = un3[1][1][1];
   if (un3[0][1][0].s!=1 || un3[0][1][0].u!=1 ||
       un3[1][1][0].s!=2 || un3[1][1][0].u!=2 ||
       un3[0][1][1].s!=un3[1][1][1].s ||
       un3[0][1][1].u!=un3[1][1][1].u)
       printf(" *** CATEGORY TEST-08 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-08 OK ***\n");
 
   en3[0][0][0] = en05;
   en3[0][1][0] = en06;
   en3[1][0][0] = en3[0][1][0];
   if (en3[0][0][0]!=0 ||
       en3[0][1][0]!=1 ||
       en3[1][0][0]!=1)
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
