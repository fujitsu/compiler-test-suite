#include<stdio.h>

 struct { int i; char c; } static st1;
 union  { signed s; unsigned u; } static un1;
 enum   { en01, en02 } static en1;

 struct { int i; char c; } volatile st2;
 union  { signed s; unsigned u; } volatile un2;
 enum   { en03, en04 } volatile en2;

 struct { int i; char c; } const st3;
 union  { signed s; unsigned u; } const un3;
 enum   { en05, en06 } const en3;

 struct { int i; char c; } typedef sttype;
 union  { signed s; unsigned u; } typedef untype;
 enum   { en07, en08 } typedef entype;
 sttype  st4;
 untype  un4;
 entype  en4;
int main()
{
   printf("*** \n");

   st1.c = 127;
   if (st1.i!=0 || st1.c!=127)
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

   st2.i = -1;
   if (st2.i!=-1 || st2.c!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (un2.s!=0 || un2.u!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   en2 = en03;
   if (en2!=0 || en03!=0 || en04!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (st3.i!=0 || st3.c!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (un3.s!=0 || un3.u!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (en3!=0 || en05!=0 || en06!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   st4.i = 1;  st4.c = 2;
   if (st4.i!=1 || st4.c!=2)
       printf(" *** \n");
   else
       printf(" *** \n");

   un4.s = -1;
#if INT64
   if (un4.s!=-1 || un4.u!=18446744073709551615)
#else
   if (un4.s!=-1 || un4.u!=4294967295)
#endif
       printf(" *** \n");
   else
       printf(" *** \n");

   en4 = en08;
   if (en4!=1 || en07!=0 || en08!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
