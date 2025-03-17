

#include <stdio.h>
#include <omp.h>

#define ELM_MAX 10
#define ELM_MAX2 8

void sub01(double (*aa)[ELM_MAX]);
void bar(double (*aa)[ELM_MAX],int idx1, int idx2);


void bar(double (*arr)[ELM_MAX],
	 int idx1,int idx2)
{
  arr[idx1][idx2] = idx1+idx2+1;
}


void sub01(double (*aa)[ELM_MAX])
{
  int i,j;
  int ej[2];
  ej[0] = 10;
#pragma omp for collapse(2)
  for(i=0; i<ej[0]; ++i){
    for(j=0; j<ELM_MAX2; j++){
	bar(aa,i,j);
	
    }
  }
}

int main(void) {
  int flag = 0;
  double a[10][ELM_MAX];
  double b[10][10];
  int ej[2];
  int i,j;
  

  ej[0] = 10;

  
  for(i=0; i<ELM_MAX ; ++i) {
    for(j=0; j<ELM_MAX ; ++j) {
      a[i][j] = 0;
      b[i][j] = 0;
    }
  }

  
  for(i=0; i<ej[0]; ++i){
    for(j=0; j<ELM_MAX2; j++){
      b[i][j] = i+j+1;
    }
  }

  sub01(a);

  
  for(i=0; i<ELM_MAX ; ++i) {
    for(j=0; j<ELM_MAX ; ++j) {
      if (a[i][j] != b[i][j]) {
	flag = 1;
	goto check_end;
      }
    }
  }
 check_end :;

  if(flag) {
    printf("NG :a[%d][%d]=",i,j);
    printf(" %lf %lf\n",a[i][j],b[i][j]);
  }
  else {
    printf("OK \n");
  }

  return 0;
}
