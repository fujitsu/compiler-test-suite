#include <stdio.h>
#include <string.h>


struct taga  {
  int    a1[2];
  int    a2;
  int    a3;
};

struct tagb  {
  unsigned int b1;
  unsigned int b2[2];
  unsigned int b3;
};

struct tagc  {
  long int c1;
  long int c2;
  long int c3[2];
};

union  tag  {
  struct taga a;
  struct tagb b;
  struct tagc c;
  int    x[4];
};
int main()
{
  struct taga *ap;
  struct tagb *bp;
  struct tagc *cp;
  union  tag  abc;
  int    i;
  void   funa(),funb(),func();
  int    sum;

  memset(&abc,'\0',sizeof(union tag));
  ap=&abc.a;
  funa(ap);
  for (i=0;i<4;i++)
    if (abc.x[i]  != 1) printf("*** ng-a %d\n",abc.x[i] );
  bp=&abc.b;
  funb(bp);
  for (i=0;i<4;i++)
    if (abc.x[i]  != 2) printf("*** ng-b %d\n",abc.x[i] );

  sum = 0;
  for (i=0;i<4;i++)
    sum = sum + abc.x[i];

  if (sum == 8)
    printf("** OK **\n");
  else
    printf("** NG **\n");
}

void  funa(p)
     struct taga *p;
{
  p-> a1[ 0] +=1;
  p-> a1[ 1] +=1;
  p->a2    +=1;
  p->a3    +=1;

  return;
}

void  funb(p)
     struct tagb *p;
{
  p->b1    +=1;
  p-> b2[ 0] +=1;
  p-> b2[ 1] +=1;
  p->b3    +=1;

  return;
}
