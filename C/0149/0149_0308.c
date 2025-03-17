#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
   int i,i2,*ip,**ipp,iarry[3],*iarryp[3];
   int fnc1(),fnc2(),(*fncp)(),(*fnca[2])();
   static char  c1[4]={1,2,3,4},(*cp)[2];
   static struct sttag {
       int i;
       char c;
   } st[2]={1,2,3,4},*stp;
   enum   entag { en1, en2, en3 } en[3],*enp;
 
   printf("*** CATEGORY ** TEST FOR FE1 ** STARTED ***\n");
 
   i = 1;  i2 = 2;
   iarry[0] = 1;  iarry[1] = 2;  iarry[2] = 3;
   ip = iarry;
   if (*(i2+ip)!=3)
       printf(" *** CATEGORY TEST-01 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-01 OK ***\n");
 
   if (*(ip+i)!=2)
       printf(" *** CATEGORY TEST-02 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-02 OK ***\n");

   stp = st;
   if ((i+stp)->i!=3 || (i+stp)->c!=4)
       printf(" *** CATEGORY TEST-03 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-03 OK ***\n");
 
   if ((stp+i)->i!=3 || (stp+i)->c!=4)
       printf(" *** CATEGORY TEST-04 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-04 OK ***\n");
 
   en[0] = en1;  en[1] = en2;  en[2] = en3;
   enp = en;
   if (*(i2+enp)!=2)
       printf(" *** CATEGORY TEST-05 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-05 OK ***\n");
 
   if (*(enp+i)!=1)
       printf(" *** CATEGORY TEST-06 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-06 OK ***\n");
 
   iarryp[0] = &iarry[0];
   iarryp[1] = &iarry[1];
   iarryp[2] = &iarry[2];
   ipp = iarryp;
   if (**(i2+ipp)!=3)
       printf(" *** CATEGORY TEST-07 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-07 OK ***\n");
 
   if (**(ipp+i)!=2)
       printf(" *** CATEGORY TEST-08 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-08 OK ***\n");
 
   fnca[0] = fnc1;
   fnca[1] = fnc2;
   fncp = fnca[0];
   if ((int)(i+(int *)fncp)!=(int)(fncp)+4)
       printf(" *** CATEGORY TEST-09 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-09 OK ***\n");
 
   if ((int)((int *)fncp+i2)!=(int)(fncp)+8)
       printf(" *** CATEGORY TEST-10 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-10 OK ***\n");
 
   cp = (char (*)[2])c1;
   if ((*(i+cp))[0]!=3 || (*(i+cp))[1]!=4)
       printf(" *** CATEGORY TEST-11 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-11 OK ***\n");
 
   if ((*(cp+i))[0]!=3 || (*(cp+i))[1]!=4)
       printf(" *** CATEGORY TEST-12 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-12 OK ***\n");
 
   if (*(i+iarry)!=2 || *(i2+iarry)!=3)
       printf(" *** CATEGORY TEST-13 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-13 OK ***\n");
 
   if (*(iarry+i)!=2 || *(iarry+i2)!=3)
       printf(" *** CATEGORY TEST-14 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-14 OK ***\n");
 
   printf("*** CATEGORY TEST ENDED ***\n");
exit (0);
}
 
int fnc1()
{
  return 1;
}
 
int fnc2()
{
  return 2;
}
