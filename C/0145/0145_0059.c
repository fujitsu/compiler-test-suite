
#include <stdio.h>
#include <omp.h>

#define ELM_MAX 10

void sub01(double (*aa)[ELM_MAX],int,int,int,int,int,int);
void bar(double (*aa)[ELM_MAX],int idx1, int idx2);


void bar(double (*arr)[ELM_MAX],
	 int idx1,int idx2)
{
  arr[idx1][idx2] = idx1+idx2+1;
}


void sub01(double (*aa)[ELM_MAX],int is,int ie,int iinc,
	   int js ,int je,int jinc)
{
  int i,j;

#pragma omp parallel
  {
#pragma omp for collapse(2) 
    for(i=is; i<ie; i=i+iinc){
      for(j=js; j<je; j=j+jinc){
	bar(aa,i,j);
      }
    }
  }
}

int main(void) {
  int flag = 0;
  double a[10][10];
  double b[10][10];
  int i,j;
  int n=ELM_MAX;

  int mis=0,mie=ELM_MAX,miinc=1;
  int mjs=0,mje=ELM_MAX,mjinc=1;

  for(i=0; i < n ; ++i) {
    for(j=0; j<ELM_MAX ; ++j) {
      a[i][j] = 0;
      b[i][j] = i+j+1;
    }
  }

  sub01(a,mis,mie,miinc,mjs,mje,mjinc);

  for(i=0; i<ELM_MAX ; ++i) {
    for(j=0; j<ELM_MAX ; ++j) {
      if (a[i][j] != b[i][j]) {
	flag = 1;
	break;
      }
    }
  }

  if(flag) {
    printf("NG :a[%d][%d]=",i,j);
    printf(" %lf \n",a[i][j]);
  }
  else {
    printf("OK \n");
  }

  return 0;
}
