#include <stdio.h>
#include <string.h>
int main() {
  union {
    int a;
    char *p;
  } uobj, *pobj = &uobj;
  int work = 0;

#pragma omp parallel
  uobj.a = 1;

  if (pobj->a == 1)
#pragma omp parallel
  {
#pragma omp parallel
    pobj->p = "runrun";
#pragma omp parallel
    if (!strcmp(uobj.p, "runrun"))
#pragma omp parallel
      ;
    else
#pragma omp parallel
      work = 1;
  } else
#pragma omp parallel
    work = 2;

  if (!work)
    printf("ok\n");
  else
    printf("ng\n");
  printf("work=%d\n", work);
}
