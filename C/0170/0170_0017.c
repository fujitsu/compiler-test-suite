#include <stdio.h>

#include <stdlib.h>

typedef struct aa 
{
  char g[10000];
  int p;
} T;
static int p=100;

static void sub(L)
     int L;
{
  int i;
  T *g[100];
  for(i=0;i<100;i++)
    {
      g[i]=(T *)malloc(sizeof(T));
    }
  for(i=L;i<0;i++)
    {
      
      g[i+p]->p=i+p;
    }
  for(i=0;i<100;i++)
    {
      if(g[i]->p!=i)
	(void)printf("ng,%d,%d\n",i,g[i]->p);
    }

  for(i=0;i<100;i++)
    {
      free( g[i] );
    }
 
  return;
}
int main()
{
  sub(-100);
  (void)printf("ok\n");
  return 0;
}
