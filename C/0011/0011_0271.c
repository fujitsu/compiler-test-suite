#include <stdio.h>

#include <string.h>
int main()
{
  int flag=0;
  int sub1();

  flag=sub1()+flag;

  if(flag!=0)
    {
      printf("  ERROR COUNT = %d \n",flag);
      printf("\n ****** NG ****** \n \n");
    }
  else
    {
      printf("   TOTAL ERROR COUNT = 0  \n");
      printf("****** OK ****** \n \n");
    }

  printf(" ***** END ***** \n");
}


int sub1()
{
int flag=0,i,j,n;
char *p;
static char a[26]={"abcdefghijklmnopqrstuvwxyz"};
char b[]={"s"};
for(n=0;n<30;n=n+10)
  {
    p=(char *)memchr(a,b[0],n);

        if(n==20) { if(!(*p==b[0])) flag=flag+1; }
          p++;
  }

if(flag!=0)
  {
    printf("       ERROR COUNT = %d \n",flag);
    printf("****** 01 NG ****** \n \n");
  }
return flag;
}
