#include<stdio.h>
  static int yes=1;
  static int no=0;
int main()
  {

   printf("*** \n");
{

   1;
   if(1)
     printf("*** \n");
}
{
   int i=9,iii;
   iii=i<1;
   i=iii<1;
   iii=i<1;
   if(iii==0)
     printf("*** \n");

}
{
   int i=9,iii;
   iii=i<=9;
   i=iii<=2;
   iii=i<=0;
   if(iii==0)
     printf("*** \n");
}
{
   int i=9,iii;
   iii=i>1;
   i=iii>1;
   iii=i>1;
   if(iii==0)
     printf("*** \n");
}
{
   int i=9,iii;
   iii=i>=9;
   i=iii>=0;
   iii=i>=2;
   if(iii==0)
     printf("*** \n");
}

{
  int i=9,iii=0;
  iii=i==10;
  i=iii==0;
  iii=i==0;
  if(iii==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=9,iii=0;
  iii= i!=0;
  i= iii!=2;
  iii= i!=1;
  if(iii==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=0,ai=1,bi=2;
  i=ai&&1;
  bi=i&&1;
  if(bi==1)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=0,ai=1,bi=2;
  bi=i||0;
  ai=bi||1;
  i=ai||2;
  if(i==1)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=1,ai=2;
  i=ai/2;
  if(i==1)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=0,ai=7;
  i=ai%4;
  if(i==3)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=0,ai=1;
  i=ai<<1;
  if(i==2)
    printf("*** \n");
  else
    printf("*** \n");
}
printf("*** \n");
  }
