#include<stdio.h>
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

   printf("*** \n");

   i = 1;  i2 = 2;
   iarry[0] = 1;  iarry[1] = 2;  iarry[2] = 3;
   ip = iarry;
   if (*(i2+ip)!=3)
       printf("");
   else
       printf(" *** \n");

   if (*(ip+i)!=2)
       printf("");
   else
       printf(" *** \n");
   stp = st;
   if ((i+stp)->i!=3 || (i+stp)->c!=4)
       printf("");
   else
       printf(" *** \n");

   if ((stp+i)->i!=3 || (stp+i)->c!=4)
       printf("");
   else
       printf(" *** \n");

   en[0] = en1;  en[1] = en2;  en[2] = en3;
   enp = en;
   if (*(i2+enp)!=2)
       printf("");
   else
       printf(" *** \n");

   if (*(enp+i)!=1)
       printf("");
   else
       printf(" *** \n");

   iarryp[0] = &iarry[0];
   iarryp[1] = &iarry[1];
   iarryp[2] = &iarry[2];
   ipp = iarryp;
   if (**(i2+ipp)!=3)
       printf("");
   else
       printf(" *** \n");

   if (**(ipp+i)!=2)
       printf("");
   else
       printf(" *** \n");

   fnca[0] = fnc1;
   fnca[1] = fnc2;
   fncp = fnca[0];
       printf(" *** \n");
       printf(" *** \n");

   cp = (char (*)[2])c1;
   if ((*(i+cp))[0]!=3 || (*(i+cp))[1]!=4)
       printf("");
   else
       printf(" *** \n");

   if ((*(cp+i))[0]!=3 || (*(cp+i))[1]!=4)
       printf("");
   else
       printf(" *** \n");

   if (*(i+iarry)!=2 || *(i2+iarry)!=3)
       printf("");
   else
       printf(" *** \n");

   if (*(iarry+i)!=2 || *(iarry+i2)!=3)
       printf("");
   else
       printf(" *** \n");

   printf("*** \n");
}

int fnc1()
{
  return 1;
}

int fnc2()
{
  return 2;
}
