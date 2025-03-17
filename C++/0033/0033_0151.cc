#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int f(char);
int f(signed char);
int f(unsigned char);
int f(char *);
int f(signed char *);
int f(unsigned char *);
int main() {
  char c = 'a';
  signed char sc = -1;
  unsigned char uc = 0xFF;
  int work = 0;

#ifdef _OPENMP
  if (!omp_get_dynamic() && omp_get_nested() && omp_get_max_threads() > 2)
    omp_set_num_threads(2);
#endif
#pragma omp parallel
  if (f(c) + f(sc) + f(uc) + f(&c) + f(&sc) + f(&uc) == 6)
#pragma omp parallel
    if (f(c))
#pragma omp parallel
      if (f(sc))
#pragma omp parallel
        if (f(uc))
#pragma omp parallel
          if (f(&c))
#pragma omp parallel
            if (f(&sc))
#pragma omp parallel
              if (f(&uc))
#pragma omp parallel
                ;
              else
#pragma omp parallel
              {
                printf("ng f(&uc)\n");
                work++;
              }
            else
#pragma omp parallel
            {
              printf("ng f(&sc)\n");
              work++;
            }
          else
#pragma omp parallel
          {
            printf("ng f(&c)\n");
            work++;
          }
        else
#pragma omp parallel
        {
          printf("ng f(uc)\n");
          work++;
        }
      else
#pragma omp parallel
      {
        printf("ng f(sc)\n");
        work++;
      }
    else
#pragma omp parallel
    {
      printf("ng f(c)\n");
      work++;
    }

  if (!work)
    printf("ok\n");
}

int f(char c) { return c == 0x61; }

int f(signed char sc) { return sc == (signed char)0xFF; }

int f(unsigned char uc) { return uc == 255; }

int f(char *p) { return *p == 97; }

int f(signed char *ps) { return *ps == -1; }

int f(unsigned char *pu) { return *pu == 0xFF; }
