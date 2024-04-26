#include <stdio.h>
#include <string.h>
int main()
{
  int flag=0;
  int sub1(),sub2(),sub3();

  flag=sub1()+sub2()+sub3()+flag;

  if(flag!=0)
    {
      printf(" TOTAL ERROR COUNT = %d \n",flag);
      printf("\n ****** - NG - ****** \n");
    }
  else
    {
      printf(" TOTAL ERROR COUNT = %d \n",flag);
      printf("\n ****** - OK - ****** \n");
    }

  printf(" ***** END ***** \n");
}

int sub1()
{
int flag=0,i,j;
char *p;
static char a[5][7]={
                "abcdefg","abcdefg","abcdefg","abcdefg","abcdefg"};
char b[5][5];
for(i=0;i<5;i++)
  {
    p=(char *)memmove(&b[i][0],&a[i][0],5);
    for(j=0;j<5;j++)
      {
        if(!(*p==b[i][j]&&*p==a[i][j]))
          flag=flag+1;
          p++;
      }
  }
if(flag!=0)
  {
    printf("       ERROR COUNT = %d \n",flag);
    printf("\n ****** - 01 NG ****** \n");
  }
return flag;
}

int sub2()
{
int flag=0,i,j;
char *p;
char a[300];
char b[300];
for(i=0;i<300;i++)
  {
    a[i]='a';
  }
p=(char *)memmove(&b[0],&a[0],260);
for(j=0;j<260;j++)
   {
     if(!(*p == b[j] && *p == a[j]))
     flag=flag+1;
     p++;
   }
if(flag!=0)
  {
    printf("       ERROR COUNT = %d \n",flag);
    printf("\n ****** - 02 NG ****** \n");
  }
  return flag;
}

int sub3()
{
int flag=0,n,i,j;
char *p;
char a[300];
char b[300];
for(i=0;i<300;i++)
  {
    a[i]='a';
  }
for(n=0;n<300;n=n+128)
{
  p=(char *)memmove(&b[0],&a[0],n);
  for(j=0;j<n;j++)
     {
       if(!(*p == b[j] && *p == a[j]))
       flag=flag+1;
       p++;
     }
}
if(flag!=0)
  {
    printf("       ERROR COUNT = %d \n",flag);
    printf("\n ****** - 03 NG ****** \n");
  }
  return flag;
}
