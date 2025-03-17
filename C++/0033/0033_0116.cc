#include <stdio.h>
#include <string.h>

static union {
  int a;
  char *p;
};
int main() {
  union {
    int b;
    char *q;
  };
  char data[10] = "runrun";
  int work = 0;

#pragma omp parallel
  a = sizeof(data);
#pragma omp parallel
  b = 10;

  if (a == b)
#pragma omp parallel
  {
#pragma omp parallel
    p = data;
#pragma omp parallel
    q = "runrun";
#pragma omp parallel
    if (!strcmp(p, q))
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
}
