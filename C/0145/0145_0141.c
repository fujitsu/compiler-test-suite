

#include <stdio.h>

int main()
{
  int a=0;

#pragma omp parallel private(a)
  {
    a = 10;
#pragma omp task if(a==0) untied default(shared)
    {
#pragma omp atomic
      a += 1;
    }
#pragma omp taskwait
    if (a!=11) printf("NG:a=%d\n",a);
  }

  
  if (a != 0) {
    printf("NG:a = %d\n",a);
  }
  printf("pass\n");
  return 0;
}
