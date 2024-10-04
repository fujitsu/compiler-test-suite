#include<stdio.h>
int main()
{
   struct { int i; char c; } st1;
   union  { signed s; unsigned u; } un1;
   enum   { en01, en02 } en1;

   static struct { int i; char c; } st2[2][2];
   static union  { signed s; unsigned u; } un2[2][2];
   enum   { en03, en04 } en2[2][2];

   static struct { int i; char c; } st3[2][2][2];
   static union  { signed s; unsigned u; } un3[2][2][2];
   enum   { en05, en06 } en3[2][2][2];

   struct { int i; char c; } *st4p,st4={0,0};
   union  { signed s; unsigned u; } *un4p,un4={0};
   enum   { en07, en08 } *en4p,en4={en07};

   printf("*** \n");

   st1.i = -1;  st1.c = 127;
   if (st1.i!=-1 || st1.c!=127)
       printf(" *** \n");
   else
       printf(" *** \n");

   un1.s = -1;
#if INT64
   if (un1.s!=-1 || un1.u!=18446744073709551615)
#else
   if (un1.s!=-1 || un1.u!=4294967295)
#endif
       printf(" *** \n");
   else
       printf(" *** \n");

   en1 = en02;
   if (en1!=1 || en01!=0 || en02!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   st2[0][0].i = 1; st2[0][0].c = 2;
   st2[1][1].i = 0; st2[1][1].c = 0;
   st2[0][1] = st2[1][0];
   if (st2[0][0].i!=1 || st2[0][0].c!=2 ||
       st2[1][1].i!=0 || st2[1][1].c!=0 ||
       st2[0][1].i!=st2[1][0].i ||
       st2[0][1].c!=st2[1][0].c)
       printf(" *** \n");
   else
       printf(" *** \n");

   un2[0][0].s = 0;
   un2[0][1].s = 0;
   un2[1][0] = un2[1][1];
   if (un2[0][0].s!=0 || un2[0][0].u!=0 ||
       un2[0][1].s!=0 || un2[0][1].u!=0 ||
       un2[1][0].s!=un2[1][1].s ||
       un2[1][0].u!=un2[1][1].u)
       printf(" *** \n");
   else
       printf(" *** \n");

   en2[0][1] = en03;
   en2[1][1] = en04;
   en2[0][0] = en2[0][1];
   en2[1][0] = en2[1][1];
   if (en2[0][0]!=0 || en2[1][0]!=1 ||
       en2[0][1]!=0 || en2[1][1]!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   st3[0][0][0] = st3[0][0][1];
   st3[1][1][1].i = 1;  st3[1][0][1].c = 2;
   if (st3[1][1][1].i!=1 || st3[1][0][1].c!=2 ||
       st3[0][0][0].i!=st3[0][0][1].i ||
       st3[0][0][0].c!=st3[0][0][1].c)
       printf(" *** \n");
   else
       printf(" *** \n");

   un3[0][1][0].s = 1;  un3[1][1][0].u = 2;
   un3[0][1][1] = un3[1][1][1];
   if (un3[0][1][0].s!=1 || un3[0][1][0].u!=1 ||
       un3[1][1][0].s!=2 || un3[1][1][0].u!=2 ||
       un3[0][1][1].s!=un3[1][1][1].s ||
       un3[0][1][1].u!=un3[1][1][1].u)
       printf(" *** \n");
   else
       printf(" *** \n");

   en3[0][0][0] = en05;
   en3[0][1][0] = en06;
   en3[1][0][0] = en3[0][1][0];
   if (en3[0][0][0]!=0 ||
       en3[0][1][0]!=1 ||
       en3[1][0][0]!=1)
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
