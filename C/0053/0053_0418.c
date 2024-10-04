#include<stdio.h>
int main()
{
   struct sttag1 *st1p;
   struct sttag1 { int i; char c; } static st1;
   union  untag1 *un1p;
   union  untag1 { signed s; unsigned u; } static un1;

   struct sttag2 volatile *st2p;
   struct sttag2 { int i; char c; } volatile st2;
   union  untag2 volatile *un2p;
   union  untag2 { signed s; unsigned u; } volatile un2;

   struct sttag3 const *st3p;
   struct sttag3 { int i; char c; } const st3={0,0};
   union  untag3 const *un3p;
   union  untag3 { signed s; unsigned u; } const un3={0};

   struct sttag4 *st4p;
   struct sttag4 { int i; char c; } typedef sttype;
   union  untag4 *un4p;
   union  untag4 { signed s; unsigned u; } typedef untype;
   sttype  st4;
   untype  un4;

   printf("*** \n");

   st1p = &st1;
   st1.c = 127;
   if (st1.i!=0 || st1.c!=127 || st1p->i!=0 || st1p->c!=127)
       printf(" *** \n");
   else
       printf(" *** \n");

   un1p = &un1;
   un1.s = -1;
#if INT64
   if (un1.s!=-1 || un1.u!=18446744073709551615 ||
       un1p->s!=-1 || un1p->u!=18446744073709551615)
#else
   if (un1.s!=-1 || un1.u!=4294967295 ||
       un1p->s!=-1 || un1p->u!=4294967295)
#endif
       printf(" *** \n");
   else
       printf(" *** \n");

   st2.i = -1;
   st2p = &st2;
   if (st2.i!=-1 || st2p->i!=-1 || st2.c!=st2p->c)
       printf(" *** \n");
   else
       printf(" *** \n");

   un2p = &un2;
   un2.s = 1;
   if (un2.s!=1 || un2.u!=1 || un2p->s!=1 || un2p->u!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   st3p = &st3;
   if (st3.i!=st3p->i || st3.c!=st3p->c)
       printf(" *** \n");
   else
       printf(" *** \n");

   un3p = &un3;
   if (un3.s!=un3p->s || un3.u!=un3p->u)
       printf(" *** \n");
   else
       printf(" *** \n");

   st4p = &st4;
   st4.i = 1;  st4.c = 2;
   if (st4.i!=1 || st4.c!=2 || st4p->i!=1 || st4p->c!=2)
       printf(" *** \n");
   else
       printf(" *** \n");

   un4p = &un4;
   un4.s = -1;
#if INT64
   if (un4.s!=-1 || un4.u!=18446744073709551615 ||
       un4p->s!=-1 || un4p->u!=18446744073709551615)
#else
   if (un4.s!=-1 || un4.u!=4294967295 ||
       un4p->s!=-1 || un4p->u!=4294967295)
#endif
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
