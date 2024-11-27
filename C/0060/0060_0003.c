#include <stdio.h>
#include <stdlib.h>
int main()
{
  int i,res;
  int a[10],b[10],c[10];
  int cnt[10];
  int *p;

  p = (int *)calloc(1,sizeof(int));
  
  for (i=0;i<10;i++) {
    res  = 0;
    cnt[i] = 0;
    a[i] = i;
    b[i] = i+1;
    c[i] = i*i;
  }

  res = 0;
  for (i=0;i<10;i++) {
    a[i] = a[i] + 1/((cnt[0]==0)?1:cnt[0]);
    b[i] = b[i] + 1/((cnt[0]==0)?1:cnt[0]);
    c[i] = c[i] + 1/((cnt[0]==0)?1:cnt[0]);
    res = res + a[i]+b[i]-c[i];
  }

  if (res>0) {
    for (i=0;i<10;i++) {
      res = *p;
    }
    if (*p<res)
      res = 1/(*p);
  }
  else {
    for (i=0;i<10;i++) {
      *p = 1/(cnt[9]+1);
      if (res < i)
	res = *p;
    }
  }

  if (res==1)
    printf("ok\n");
  else
    printf("ng ... %d\n",res);

  free(p);
}
