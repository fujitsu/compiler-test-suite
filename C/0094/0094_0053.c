#include  <stdio.h>
#include  <stdlib.h>
typedef struct sss {
  int a1,a2,a3;
  short b1,b2,b3;
  long c1,c2,c3;
  struct sss *ptr;
  double d1,d2,d3;
} ST;

ST *rcsv(int stp)
{
  ST *sp;
  sp = (ST*)malloc(sizeof(ST));
  if(sp==NULL) { printf("malloc error\n");exit(1); }
  if(--stp==0) {
    sp->c2=0x12345;
    return(sp);
  }
  sp->ptr=rcsv(stp);
  return(sp);
}

int test(ST *a,int stp)
{
  int ret = 0;

  if(--stp==0){
    if(a->c2==0x12345)
      return 1;
    else
      return 0;
  }
  ret = test(a->ptr, stp);
  free(a->ptr);
  return ret;
}

void getnum(int step)
{
  ST *a;
  a=rcsv(step);
  if(test(a,step)==1)
    printf("ok\n");
  else
    printf("ng\n");
  free(a);
}
int main()
{
  getnum(600);
  getnum(601);
  getnum(602);
  getnum(603);
}
