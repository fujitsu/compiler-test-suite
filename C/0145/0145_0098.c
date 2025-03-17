

#include <stdio.h>
#include <omp.h>

#define ELM_MAX1 2
#define ELM_MAX2 3

void sub01(double (*aa)[ELM_MAX2]);
void bar(double (*aa)[ELM_MAX2],unsigned int idx1, unsigned int idx2);


void bar(double (*arr)[ELM_MAX2],
	 unsigned int idx1,unsigned int idx2)
{
  arr[idx1][idx2] = idx1+idx2+1;
}


void sub01(double (*aa)[ELM_MAX2])
{
  unsigned int i,j;
  unsigned int ii[3],jj[3];
  ii[0] = 0;
  ii[1] = ELM_MAX1;
  ii[2] = 1;
  jj[0] = 0;
  jj[1] = ELM_MAX2;
  jj[2] = 1;

#pragma omp parallel
  {
#pragma omp for collapse(2) private(i,j) ordered
    for(i=ii[0]; i<ii[1]; i=i+ii[2]){
      for(j=jj[0]; j<jj[1]; j=j+jj[2]){
	bar(aa,i,j);
	
      }
    }
  }
}

int main(void) {
  int flag = 0;
  double a[ELM_MAX1][ELM_MAX2];
  double b[ELM_MAX1][ELM_MAX2];
  unsigned int i,j;
  unsigned int n=ELM_MAX1;

  for(i=0; i < n ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      a[i][j] = 0;
      b[i][j] = i+j+1;
    }
  }

  sub01(a);

  for(i=0; i<ELM_MAX1 ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      if (a[i][j] != b[i][j]) {
	flag = 1;
	goto check_end;
      }
    }
  }
 check_end :;

  if(flag) {
    printf("NG :a[%d][%d]=",i,j);
    printf(" %lf \n",a[i][j]);
  }
  else {
    printf("OK \n");
  }

  return 0;
}
