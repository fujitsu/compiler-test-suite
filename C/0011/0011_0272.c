#include <stdio.h>

#include <string.h>
static char a[301] =
             {"abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"};
static char b[301] =
             {"abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"};
int main()
{
  int flag=0;
  int sub1(),sub2(),sub3();

  flag=sub1()+flag;
  flag=sub2()+flag;
  flag=sub3()+flag;

  if(flag!=0)
    {
      printf(" TOTAL ERROR COUNT = %d \n",flag);
      printf("\n ****** NG ****** \n");
    }
  else
    {
      printf(" TOTAL ERROR COUNT = %d \n",flag);
      printf("\n ****** OK ****** \n");
    }

  printf(" ***** END ***** \n");
}


int sub1()
{
int flag=0,i,j;
int p;
static char c[]="j";
char d[2];
for(i=0;i<3;i++)
  {
    switch (i)
              {
                case 0:
                d[0]=a[9];
                a[9]=c[0];
                break;
                case 1:
                d[0]=b[9];
                b[9]=c[0];
                break;
                case 2:
                break;
              }

    p=memcmp(b,a,11);
    if( p < 0 ) p = -1;
    else if( p > 0 ) p = 1;
    switch (i)
              {
                case 0:
                if(p!=-1) flag=flag+1;
                a[9]=d[0];
                break;
                case 1:
                if(p!=1) flag=flag+1;
                b[9]=d[0];
                break;
                case 2:
                if(p!=0) flag=flag+1;
                break;
              }
  }
if(flag!=0)
  {
    printf("       ERROR COUNT = %d \n",flag);
    printf("\n ****** 01 NG ****** \n");
  }
else
  {
    printf("\n ****** 01 OK ****** \n");
  }
return flag;
}


int sub2()
{
int flag=0,i,j;
int p;
static char c[]="j";
char d[2];
for(i=0;i<3;i++)
  {
    switch (i)
              {
                case 0:
                d[0]=a[260];
                a[260]=c[0];
                break;
                case 1:
                d[0]=b[260];
                b[260]=c[0];
                break;
              }

    p=memcmp(b,a,266);
    if( p < 0 ) p = -1;
    else if( p > 0 ) p = 1;

    switch (i)
              {
                case 0:
                if(p!=-1) flag=flag+1;
                a[260]=d[0];
                break;
                case 1:
                if(p!=1) flag=flag+1;
                b[260]=d[0];
                break;
                case 2:
                if(p!=0) flag=flag+1;
                break;
              }
  }
if(flag!=0)
  {
    printf("       ERROR COUNT = %d \n",flag);
    printf("\n ****** 02 NG ****** \n");
  }
else
  {
    printf("\n ****** 02 OK ****** \n");
  }
return flag;
}


int sub3()
{
int flag=0,i,j,n,m;
int p;
static char c[]="j";
char d[2];
for(n=0;n<300;n=n+130)
{
m=n-10;
  for(i=0;i<3;i++)
    {
      switch (i)
                {
                  case 0:
		if( m >= 0 ) {
                  d[0]=a[m];
                  a[m]=c[0];
		}
                break;
                  case 1:
		if( m >= 0 ) {
                  d[0]=b[m];
                  b[m]=c[0];
		}
                break;
                }

      p=memcmp(b,a,n);
      if( p < 0 ) p = -1;
      else if( p > 0 ) p = 1;

      if(n==0) {
               if(p!=0) flag=flag+1;
               break;
               }
      switch (i)
                {
                  case 0:
                  if(p!=-1) flag=flag+1;
                  a[m]=d[0];
                break;
                  case 1:
                  if(p!=1) flag=flag+1;
                  b[m]=d[0];
                break;
                  case 2:
                  if(p!=0) flag=flag+1;
                break;
                }
    }
 }
if(flag!=0)
  {
    printf("       ERROR COUNT = %d \n",flag);
    printf("\n ****** 03 NG ****** \n");
  }
else
  {
    printf("\n ****** 03 OK ****** \n");
  }
return flag;
}

