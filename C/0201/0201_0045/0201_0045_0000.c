#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <memory.h>

static int (*array_i)[2], (*array_j)[3];
static struct TAG1 {
  int tmp[2][2];
} st1;
static struct TAG2 {
  int tmp[3][3];
} st2;

int main()
{
  int k,error;
  omp_set_dynamic(0);
  omp_set_num_threads(4);

  error = 0;
#pragma omp parallel private(array_i, array_j, st1, st2)
  {
    array_i = malloc(sizeof(int)*2*2);
    array_j = malloc(sizeof(int)*3*3);
    array_i[0][0] = array_i[1][0] = array_i[0][1] = array_i[1][1] = 0;
#pragma omp single copyprivate(st1, st2)
    {
      int i,j;
      array_i[0][0] = array_i[1][0] = array_i[0][1] = array_i[1][1] = omp_get_thread_num();
      for(i=0;i<3;i++)
	for(j=0;j<3;j++)
	  array_j[i][j] = array_i[0][0]-1;
      k = omp_get_thread_num();
      memcpy(&st1, array_i, sizeof(st1));
      memcpy(&st2, array_j, sizeof(st2));
    }
    if((k != st1.tmp[0][0]) || (k != st1.tmp[1][1]) || (k-1 != st2.tmp[0][0])) {
#pragma omp atomic
      error++;
    }
    free(array_i);
    free(array_j);
  }
  
  if(error != 0) {
    puts("NG");
  } else {
    puts("pass");
  }
}

