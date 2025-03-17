#include <string.h>
#include <stdio.h>
int sub4(int i, int j);
int sub2(int L);
int sub3(int L);
int sub(int L);


static char b[]="1234567890";
int main()
{
  sub(11);
  sub3(11);
  puts("ok");
}
int sub(int L)
{
  char  a[11];
  char  *A,*B;
  int i,p=0,q=0,d=0;
  A=a;
  B=b;
  for(i=0;i<L;i++)
    {
      p=i*i;
      q=p+i+i;
      *A=*B;
      A++;
      B++;
      d+=sub2(p+q);
    }
  if(d!=880)
    printf("ng\n");
  if(strcmp(a,b))
    printf("ng\n");
}

int sub2(L)
     int L;
{
  return L;
}

int sub3(L)
     int L;
{
  int i;
  int p=0;
  for(i=0;i<L;i++)
    {
      p=sub4(i*(i+5),i*(i-5));
    }
  if(p!=200)
    printf("ng\n");
}

int sub4(i,j)
     int i,j;
{
  return i+j;
}

