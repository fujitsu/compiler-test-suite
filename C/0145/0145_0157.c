
#include <omp.h>
#include <stdio.h>

void sub01()
{
  int a[10]={100,100,100,100,100,100,100,100,100,100},
      b[10]={150,150,150,150,150,150,150,150,150,150},
      c[10]={200,200,200,200,200,200,200,200,200,200},
      i;
#pragma omp task firstprivate(a,b,c)
  {
    for (i=0;i<10;i++) {
      if (a[i]!=100 || b[i]!=150 || c[i]!=200) {
	printf("NG-1: a[%d]=%d\n",i,a[i]);
	printf("    : b[%d]=%d\n",i,b[i]);
	printf("    : c[%d]=%d\n",i,c[i]);
      } else {
	a[i]+=50;
	b[i]+=50;
	c[i]=a[i]+b[i];
      }
    }
  }
#pragma omp taskwait
  for (i=0;i<10;i++) {
    if (a[i]!=100 || b[i]!=150 || c[i]!=200) {
      printf("NG-2: a[%d]=%d\n",i,a[i]);
      printf("    : b[%d]=%d\n",i,b[i]);
      printf("    : c[%d]=%d\n",i,c[i]);
    }
  }
}

int main(void)
{
#pragma omp parallel
  {
    sub01();
  }
  printf("pass\n");
  return 0;
}
