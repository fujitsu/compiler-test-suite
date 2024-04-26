#include <stdio.h>

#include <string.h>
static char a[301] =
             {"abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"};
static char b[101] =
             {"abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"
               "abcdeabcdeabcdeabcdeabcdeabcdeacbdeabcdeabcdeabcde"};
int main()
{
  int flag=0;
  int sub1(),sub2(),sub3();

  flag=sub1()+flag;
  flag=sub2()+flag;

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
int flag=0;
int p;
    p=strlen(a);
    if(p!=300) flag=flag+1;
    p=strlen(b);
    if(p!=100) flag=flag+1;
if(flag!=0)
  {
    printf("****** ERROR COUNT    %d ****** \n",flag);
    printf("******* 01 NG ******* \n");
  }
return flag;
}

int sub2()
{
int flag=0;
int p;
    p=strlen(a)+strlen(b);
    if(p!=400) flag=flag+1;
if(flag!=0)
    printf("\n ****** 02 NG ****** \n");
return flag;
}
