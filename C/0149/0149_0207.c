#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
   struct sttag1 *st1p;
   struct sttag1 { int i; char c; } static st1[2][2][2];
   union  untag1 *un1p;
   union  untag1 { signed s; unsigned u; } static un1[2][2][2];
 
   struct sttag2 volatile *st2p=NULL;
   struct sttag2 { int i; char c; } volatile st2[2][2][2]={0};
   union  untag2 volatile *un2p=NULL;
   union  untag2 {signed s; unsigned u;} volatile un2[2][2][2]={0};
 
   struct sttag3 const *st3p=NULL, *st3p2=NULL;
   struct sttag3 { int i; char c; } const st3[2][2][2]={0};
   union  untag3 const *un3p=NULL, *un3p2=NULL;
   union  untag3 { signed s; unsigned u; } const un3[2][2][2]={0};
 
   struct sttag4 *st4p=NULL;
   struct sttag4 { int i; char c; } typedef stype[2][2][2];
   union  untag4 *un4p=NULL;
   union  untag4 {signed s; unsigned u;} typedef utype[2][2][2];
   stype  st4={0};
   utype  un4={0};
 
   printf("*** CATEGORY ** TEST FOR DCL ** STARTED ***\n");
 
   st1[0][0][0].i = -1;  st1[0][1][0].c = 127;
   st1[1][0][0].i = 1;  st1[1][1][1].c = 2;
   st1p = &st1[0][0][0];
   if (st1[0][0][0].i!=-1 || st1[0][0][0].c!=0 ||
       st1[0][1][0].i!=0  || st1[0][1][0].c!=127 ||
       st1[1][0][0].i!=1  || st1[1][0][0].c!=0 ||
       st1[1][1][1].i!=0  || st1[1][1][1].c!=2 ||
       st1p->i!=-1 || st1p->c!=0)
       printf(" *** CATEGORY TEST-01 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-01 OK ***\n");
 
   un1[0][0][0].s = -1;  un1[0][1][0].u = 127;
   un1[1][0][0].s = 1;  un1[1][1][1].u = 2;
   un1p = &un1[0][0][0];
   if (un1[0][0][0].s!=-1 || un1[0][0][0].u!=4294967295 ||
       un1[0][1][0].s!=127 || un1[0][1][0].u!=127 ||
       un1[1][0][0].s!=1  || un1[1][0][0].u!=1 ||
       un1[1][1][1].s!=2  || un1[1][1][1].u!=2 ||
       un1[1][0][1].s!=0  || un1[0][1][1].u!=0 ||
       un1p->s!=-1 || un1p->u!=4294967295)
       printf(" *** CATEGORY TEST-02 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-02 OK ***\n");
 
   st2[0][0][0].i = st2[0][0][0].c = 0;
   st2[0][0][1].i = -1;  st2[1][0][1].c = 127;
   st2[1][1][0].i = 1;   st2[0][1][1].c = 2;
   st2p = &st2[0][0][0];
   if (st2[0][0][0].i!=0  || st2[0][0][0].c!=0 ||
       st2[0][0][1].i!=-1 || st2[1][0][1].c!=127 ||
       st2[1][1][0].i!=1  || st2[0][1][1].c!=2 ||
       st2p->i!=0 || st2p->c!=0)
       printf(" *** CATEGORY TEST-03 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-03 OK ***\n");
 
   un2[0][0][0].s = un2[1][1][1].u = 0;
   un2[0][0][1].s = -1;  un2[0][1][1].u = 127;
   un2[1][0][1].s = 1;   un2[1][1][0].u = 2;
   un2p = &un2[0][0][0];
   if (un2[0][0][1].s!=-1 || un2[0][0][1].u!=4294967295 ||
       un2[0][1][1].s!=127 || un2[0][1][1].u!=127 ||
       un2[1][0][1].s!=1  || un2[1][0][1].u!=1 ||
       un2[1][1][0].s!=2  || un2[1][1][0].u!=2 ||
       un2[0][0][0].s!=0  || un2[1][1][1].u!=0 ||
       un2p->s!=0 || un2p->u!=0)
       printf(" *** CATEGORY TEST-04 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-04 OK ***\n");
 
   st3p = &st3[0][0][0];
   st3p2 = &st3[1][0][1];
   if (st3[0][0][0].i!=st3p->i ||
       st3[0][0][0].c!=st3p->c ||
       st3[1][0][1].i!=st3p2->i ||
       st3[1][0][1].c!=st3p2->c)
       printf(" *** CATEGORY TEST-05 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-05 OK ***\n");
 
   un3p = &un3[1][1][1];
   if (un3[0][0][0].s!=(signed)un3[0][0][0].u ||
       un3[0][0][1].s!=(signed)un3[0][0][1].u ||
       un3[1][1][0].s!=(signed)un3[1][1][0].u ||
       un3[1][1][1].s!=(signed)un3[1][1][1].u ||
       un3[1][1][1].s!=un3p->s ||
       un3[1][1][1].u!=un3p->u)
       printf(" *** CATEGORY TEST-06 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-06 OK ***\n");
 
   st4p = &st4[1][1][1];
   st4[0][0][0].i = -1;  st4[0][0][0].c = 127;
   st4[1][1][1].i = st4[0][0][0].i;
   st4[1][1][1].c = st4[0][0][0].c;
   if (st4[0][0][0].i!=-1 || st4[0][0][0].c!=127 ||
       st4[1][1][1].i!=-1 || st4[1][1][1].c!=127 ||
       st4p->i!=-1 || st4p->c!=127)
       printf(" *** CATEGORY TEST-07 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-07 OK ***\n");
 
   un4p = &un4[0][1][0];
   un4[0][0][0].s = -1;  un4[0][1][0].u = 127;
   un4[1][1][1].s = un4[0][0][0].s;
   if (un4[0][0][0].s!=-1 || un4[0][0][0].u!=4294967295 ||
       un4[0][1][0].s!=127 || un4[0][1][0].u!=127 ||
       un4[1][1][1].s!=-1 || un4[1][1][1].u!=4294967295 ||
       un4p->s!=127 || un4p->u!=127)
       printf(" *** CATEGORY TEST-08 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-08 OK ***\n");
 
   printf("*** CATEGORY TEST ENDED ***\n");
exit (0);
}
