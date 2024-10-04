#include<stdio.h>
int main()
{
   struct { int i; char c; } static st1[2][2];
   union  { signed s; unsigned u; } static un1[2][2];
   enum   { en01, en02 } static en1[2][2];

   struct { int i; char c; } static volatile st2[2][2];
   union  { signed s; unsigned u; } static volatile un2[2][2];
   enum   { en03, en04 } volatile en2[2][2];

   struct { int i; char c; } const st3[2][2]={{0,0},{0,0}};
   union  { signed s; unsigned u; } const un3[2][2]={0};
   enum   { en05, en06 } const en3[2][2] = { 0,0,1,1 };

   struct { int i; char c; } typedef sttype[2][2];
   union  { signed s; unsigned u; } typedef untype[2][2];
   enum   { en07, en08 } typedef entype[2][2];
   static sttype  st4;
   static untype  un4;
   entype  en4;

   const int *ip[4];
   const char *cp[4];
   const signed *sp[4];

   printf("*** \n");

   st1[1][1].i = -1;  st1[1][0].c = 127;
   if (st1[0][0].i!=0 || st1[0][0].c!=0 ||
       st1[0][1].i!=0 || st1[0][1].c!=0 ||
       st1[1][0].i!=0 || st1[1][0].c!=127 ||
       st1[1][1].i!=-1 || st1[1][1].c!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   un1[0][0].s = -1;
   un1[1][0].s = 1;
#if INT64
   if (un1[0][0].s!=-1 || un1[0][0].u!=18446744073709551615 ||
       un1[0][1].s!=0  || un1[0][1].u!=0 ||
       un1[1][0].s!=1  || un1[1][0].u!=1 ||
       un1[1][1].s!=0  || un1[1][1].u!=0)
#else
   if (un1[0][0].s!=-1 || un1[0][0].u!=4294967295 ||
       un1[0][1].s!=0  || un1[0][1].u!=0 ||
       un1[1][0].s!=1  || un1[1][0].u!=1 ||
       un1[1][1].s!=0  || un1[1][1].u!=0)
#endif
       printf(" *** \n");
   else
       printf(" *** \n");

   en1[1][0] = en1[0][1] = en02;
   if (en1[0][0]!=0 || en1[0][1]!=1 ||
       en1[1][0]!=1 || en1[1][1]!=0 ||
       en01!=0 || en02!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   st2[0][0].i = -1;  st2[0][0].c = 127;
   st2[0][1].i = 1;  st2[0][1].c = 2;
   st2[1][0].i = st2[0][0].i;
   st2[1][0].c = st2[0][0].c;
   st2[1][1].i = st2[0][1].i;
   st2[1][1].c = st2[0][1].c;
   if (st2[0][0].i!=-1 || st2[0][0].c!=127 ||
       st2[0][1].i!=1  || st2[0][1].c!=2   ||
       st2[1][0].i!=-1 || st2[1][0].c!=127 ||
       st2[1][1].i!=1  || st2[1][1].c!=2)
       printf(" *** \n");
   else
       printf(" *** \n");

   un2[0][1].s = -1;
   un2[1][1].s = 1;
   un2[0][0].s = un2[0][1].s;
   un2[1][0].s = un2[1][1].s;
#if INT64
   if (un2[0][0].s!=-1 || un2[0][0].u!=18446744073709551615 ||
       un2[0][1].s!=-1 || un2[0][1].u!=18446744073709551615 ||
       un2[1][0].s!=1  || un2[1][0].u!=1 ||
       un2[1][1].s!=1  || un2[1][1].u!=1)
#else
   if (un2[0][0].s!=-1 || un2[0][0].u!=4294967295 ||
       un2[0][1].s!=-1 || un2[0][1].u!=4294967295 ||
       un2[1][0].s!=1  || un2[1][0].u!=1 ||
       un2[1][1].s!=1  || un2[1][1].u!=1)
#endif
       printf(" *** \n");
   else
       printf(" *** \n");

   en2[0][0] = en2[1][1] = en04;
   en2[0][1] = en2[1][0] = en03;
   if (en2[0][0]!=1 || en2[0][1]!=0 ||
       en2[1][0]!=0 || en2[1][1]!=1 ||
       en03!=0 || en04!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   ip[0] = &st3[0][0].i;  cp[0] = &st3[0][0].c;
   ip[1] = &st3[0][1].i;  cp[1] = &st3[0][1].c;
   ip[2] = &st3[1][0].i;  cp[2] = &st3[1][0].c;
   ip[3] = &st3[1][1].i;  cp[3] = &st3[1][1].c;
   if (st3[0][0].i!=*ip[0] || st3[0][0].c!=*cp[0] ||
       st3[0][1].i!=*ip[1] || st3[0][1].c!=*cp[1] ||
       st3[1][0].i!=*ip[2] || st3[1][0].c!=*cp[2] ||
       st3[1][1].i!=*ip[3] || st3[1][1].c!=*cp[3])
       printf(" *** \n");
   else
       printf(" *** \n");

   sp[0] = &un3[0][0].s;  sp[1] = &un3[0][1].s;
   sp[2] = &un3[1][0].s;  sp[3] = &un3[1][1].s;
   if (un3[0][0].s!=*sp[0] ||
       un3[0][0].u!=(unsigned)*sp[0] ||
       un3[0][1].s!=*sp[1] ||
       un3[0][1].u!=(unsigned)*sp[1] ||
       un3[1][0].s!=*sp[2] ||
       un3[1][0].u!=(unsigned)*sp[2] ||
       un3[1][1].s!=*sp[3] ||
       un3[1][1].u!=(unsigned)*sp[3])
       printf(" *** \n");
   else
       printf(" *** \n");

   if (en3[0][0]!=0 || en3[0][1]!=0 ||
       en3[1][0]!=1 || en3[1][1]!=1 ||
       en05!=0 || en06!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   st4[0][0].i = 1;  st4[0][0].c = 2;
   st4[0][1].i = st4[0][0].i;
   st4[1][0].c = st4[0][0].c;
   st4[1][1].i = st4[0][0].i;
   st4[1][1].c = st4[0][0].c;
   if (st4[0][0].i!=1 || st4[0][0].c!=2 ||
       st4[0][1].i!=1 || st4[1][0].c!=2 ||
       st4[1][1].i!=1 || st4[1][1].c!=2)
       printf(" *** \n");
   else
       printf(" *** \n");

   un4[0][0].s = -1;
   un4[0][1].s = un4[0][0].s;
   un4[1][0].u = un4[0][0].u;
   un4[1][1].s = un4[0][0].s;
#if INT64
   if (un4[0][0].s!=-1 || un4[0][0].u!=18446744073709551615 ||
       un4[0][1].s!=-1 || un4[0][1].u!=18446744073709551615 ||
       un4[1][0].s!=-1 || un4[1][0].u!=18446744073709551615 ||
       un4[1][1].s!=-1 || un4[1][1].u!=18446744073709551615)
#else
   if (un4[0][0].s!=-1 || un4[0][0].u!=4294967295 ||
       un4[0][1].s!=-1 || un4[0][1].u!=4294967295 ||
       un4[1][0].s!=-1 || un4[1][0].u!=4294967295 ||
       un4[1][1].s!=-1 || un4[1][1].u!=4294967295)
#endif
       printf(" *** \n");
   else
       printf(" *** \n");

   en4[0][0] = en08;
   en4[1][0] = en4[0][1] = en07;
   en4[1][1] = en4[0][0];
   if (en4[0][0]!=1 || en4[0][1]!=0 ||
       en4[1][0]!=0 || en4[1][1]!=1 ||
       en07!=0 || en08!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
