#include<stdio.h>

int exi=0;
int main()
{
   int i,i2,*ip,fnc(),iarry[2];
   static struct sttag { int i; char c; } st1,st2;
   enum   entag { en1, en2 } en;
   void   vfnc();

   printf("*** \n");

   i = 1;  i2 = 2;
   if ((i,i2)!=2)
       printf("");
   else
       printf(" *** \n");
   st1.i = -1;  st1.c = 127;
   st2.i=(i,st1.i);
   st2.c=(i,st1.c);
   if (st2.i!=-1 || st2.c!=127)
       printf("");
   else
       printf(" *** \n");

   en = en1;
   if ((i,en)!=0)
       printf("");
   else
       printf(" *** \n");

   ip = &i2;
   if (*(i,ip)!=2)
       printf("");
   else
       printf(" *** \n");

   if ((i,fnc())!=-1)
       printf("");
   else
       printf(" *** \n");

   iarry[0] = 1;  iarry[1] = 2;
   if ((i,iarry)[1]!=2)
       printf("");
   else
       printf(" *** \n");

   i,vfnc();
   if (exi!=100)
       printf("");
   else
       printf(" *** \n");

   printf("*** \n");
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
