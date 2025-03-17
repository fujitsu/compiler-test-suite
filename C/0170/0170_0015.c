#include <stdio.h>
int sub();

int main()
{
  sub();
}
int sub()
{
  int i;
  int **kkk[10];
  int *kk[10];
  int k[10];
  int **sss[10];
  int *ss[10];
  int s[10];
  int p[10];
  for(i=0;i<10;i++)
    {
      k[i]=i;
    }
  for(i=0;i<10;i++)
    {
      kk[i]=&k[i];
    }
  for(i=0;i<10;i++)
    {
      kkk[i]=&kk[i];
    }
  for(i=0;i<10;i++)
    {
      s[i]=i;
    }
  for(i=0;i<10;i++)
    {
      ss[i]=&s[i];
    }
  for(i=0;i<10;i++)
    {
      sss[i]=&ss[i];
    }
  
  for(i=0;i<10;i++)
    {
      p[i]=**kkk[i]+**sss[9-i];
    }
  for(i=0;i<10;i++)
    {
      if(p[i]!=9)
	printf("ng %d\n",p[i]);
    }
  printf("ok\n");
}
