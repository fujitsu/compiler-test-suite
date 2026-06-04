#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <complex.h>
#include <memory.h>

struct TAG {
  int xx[2][2];
};

static char       string[4096];
static struct TAG array[2][2];
#pragma omp threadprivate(string, array)

void *addr[4096];

int main()
{
  struct TAG k;
  char       s[4096];
  int error;
  int tn;
  int nt;
  omp_set_dynamic(0);
  omp_set_num_threads(4);
  error = 0;
#pragma omp parallel private(tn)
  {
    nt = omp_get_num_threads();
  
    tn = omp_get_thread_num();
    memset(array, 0, sizeof(array));
    memset(string, 0, sizeof(string));
#pragma omp single copyprivate(string, array)
    {
      int i,j;
      sprintf(string, "%d\n", omp_get_thread_num());
      for(i=0;i<2;i++)
        for(j=0;j<2;j++)
          array[i][j].xx[1][0] = omp_get_thread_num();
      sprintf(s, "%d\n", omp_get_thread_num());
      k.xx[1][0]     = omp_get_thread_num();
    }
    
    if(strcmp(s, string) != 0 ||
       (k.xx[1][0] != array[0][0].xx[1][0]) || (k.xx[1][0] != array[1][1].xx[1][0])) {
#pragma omp atomic
      error++;
    }
    addr[tn] = &string; 
  }

  if(nt > 1) {
    int n,m;
    for(m=0;m < nt;m++) {
      for(n=m+1;n < nt;n++) {
	if(addr[m] == addr[n]) {
	  error++;
	}
      }
    }
  }

  if(error != 0) {
    puts("NG");
  } else {
    puts("pass");
  }
}

