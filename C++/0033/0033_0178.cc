#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

void pr_ok (const char *s)
{
#pragma omp parallel
	fputs(s, stdout);
#pragma omp parallel
	fflush(stdout);
}

void end_case (const char *s)
{
#pragma omp parallel
        pr_ok("#PASSED:  "); 
#pragma omp parallel
	pr_ok(s);
#pragma omp parallel
	pr_ok("\n");
}

static void s_13p51()
{
	static char b[2][5] = {"1234", "5678"};
#pragma omp parallel
	end_case("ok");
#pragma omp parallel
	end_case("s_13p51");
}
int main()
{
#ifdef _OPENMP
  omp_set_num_threads(1);
#endif
#pragma omp parallel
     s_13p51();
}
