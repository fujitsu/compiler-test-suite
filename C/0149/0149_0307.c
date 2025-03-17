#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
int exi=0;
int main()
{
   int i,i2,*ip,fnc(),iarry[2];
   static struct sttag { int i; char c; } st1,st2;
   enum   entag { en1, en2 } en;
   void   vfnc();
 
   printf("*** CATEGORY ** TEST FOR FE1 ** STARTED ***\n");
 
   i = 1;  i2 = 2;
   if ((i,i2)!=2)
       printf(" *** CATEGORY TEST-01 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-01 OK ***\n");

   st1.i = -1;  st1.c = 127;
   st2.i=(i,st1.i);
   st2.c=(i,st1.c);
   if (st2.i!=-1 || st2.c!=127)
       printf(" *** CATEGORY TEST-02 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-02 OK ***\n");
 
   en = en1;
   if ((i,en)!=0)
       printf(" *** CATEGORY TEST-03 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-03 OK ***\n");
 
   ip = &i2;
   if (*(i,ip)!=2)
       printf(" *** CATEGORY TEST-04 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-04 OK ***\n");
 
   if ((i,fnc())!=-1)
       printf(" *** CATEGORY TEST-05 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-05 OK ***\n");
 
   iarry[0] = 1;  iarry[1] = 2;
   if ((i,iarry)[1]!=2)
       printf(" *** CATEGORY TEST-06 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-06 OK ***\n");
 
   i,vfnc();
   if (exi!=100)
       printf(" *** CATEGORY TEST-07 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-07 OK ***\n");
 
   printf("*** CATEGORY TEST ENDED ***\n");
exit (0);
}
 
int fnc()
{
  return -1;
}
 
void vfnc()
{
  exi += 100;
  return ;
}
