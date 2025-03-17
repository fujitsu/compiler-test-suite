#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

long Nerrs = 0;
long Nerr_items = 0;
long Nerrs_this_case = 0;
long Nremarks = 0;
long Nsuccess = 0;
long Nsuccess_items = 0;
char last_char_printed = 0;

void pr_ok(const char *s) {
  char c;
#pragma omp parallel
  fputs(s, stdout);
#pragma omp parallel
  while (*s != '\0')
#pragma omp parallel
    c = *s++;
#pragma omp parallel
  last_char_printed = c;
#pragma omp parallel
  fflush(stdout);
}

void begin_case(const char *s) {
#pragma omp parallel
  Nerrs_this_case = Nerr_items;
}

void end_case(const char *s) {
#pragma omp parallel
  if (last_char_printed != '\n')
#pragma omp parallel
    pr_ok("ok\n");
#pragma omp parallel
  if (Nerrs_this_case == Nerr_items)
#pragma omp parallel
  {
#pragma omp parallel
    ++Nsuccess;
#pragma omp parallel
    pr_ok("#PASSED:  ");
  } else
#pragma omp parallel
  {
#pragma omp parallel
    ++Nerrs;
#pragma omp parallel
    pr_ok("#FAILED:  ");
  }
#pragma omp parallel
  pr_ok(s);
#pragma omp parallel
  pr_ok("\n");
}

static void s_13p51() {
#pragma omp parallel
  begin_case("s_13p51");
  static int a[2] = {1000, 2000};
  static char b[2][5] = {"1234", "5678"};
#pragma omp parallel
  end_case("s_13p51");
}

static void s_13p52() {
#pragma omp parallel
  begin_case("s_13p52");
  static char b[2][5] = {"1234", "5678"};
  static char c[2][6] = {"1234", "5678"};
#pragma omp parallel
  end_case("s_13p52");
}
int main() {
#ifdef _OPENMP
  omp_set_num_threads(1);
#endif
#pragma omp parallel
  s_13p51();
#pragma omp parallel
  s_13p52();
}
