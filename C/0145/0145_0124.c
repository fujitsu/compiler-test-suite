

#include <stdio.h>

int main()
{
  int a[10]={5,5,5,5,5,5,5,5,5,5},i,cnt;

#pragma omp parallel
  {
#pragma omp for
    for (i=0;i<10;i++) {
#pragma omp task
      {
	if (a[i]==5 ) {
	  a[i]+=10;
	}
      }
#pragma omp taskwait
    }
  }

  
  cnt=0;
  for (i=0;i<10;i++) {
    if (a[i]==15) {
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
