

#include <stdio.h>

int main()
{
  int a[10]={5,5,5,5,5,5,5,5,5,5},i,cnt;
#pragma omp parallel
  {
#pragma omp for firstprivate(a)
    for (i=0;i<10;i++) {
#pragma omp task
      {
	if (a[i]==5) {
	  a[i]+=10;
	} else {
	  printf("NG:task a[%d] = %d\n",i,a[i]);
	}
      }
#pragma omp taskwait
      if (a[i]!=5) printf("NG:a[%d] = %d\n",i,a[i]);
    }
  }

  
  cnt=0;
  for (i=0;i<10;i++) {
    if (a[i]==5) {
      cnt+=1;
    } else {
      printf("NG:a[%d] = %d\n",i,a[i]);
    }
  }

  if (cnt!=10) {
    printf("NG: cnt = %d\n");
  }
  printf("pass\n");
  return 0;
}
