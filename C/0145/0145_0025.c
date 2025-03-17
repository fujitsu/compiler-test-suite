

#include <stdio.h>
#include <omp.h>

#define ELM_MAX2 10
#define ELM_MAX1 10

void sub01(double (*aa)[ELM_MAX2]);
void bar(double (*aa)[ELM_MAX2],int idx1, int idx2);


void bar(double (*arr)[ELM_MAX2],
	 int idx1,int idx2)
{
  arr[idx1][idx2] = idx1+idx2+1;
}


void sub01(double (*aa)[ELM_MAX2])
{
  int i,j;

  int is,ie,iinc;
  int js,je,jinc;

  is=0;
  ie=ELM_MAX1;
  iinc=1;
  js=0;
  je=ELM_MAX2;
  jinc=1;

#pragma omp for collapse(2) 
  for(i=is; i<ie; i=i+iinc){
    for(j=js; j<je; j=j+jinc){
	bar(aa,i,j);
    }
  }
}

int main(void) {
  int flag = 0;
  double a[10][10];
  double b[10][10];
  int i,j;
  int n=ELM_MAX1;



  for(i=0; i < n ; ++i) {
    for(j=0; j<ELM_MAX1 ; ++j) {
      a[i][j] = 0;
      b[i][j] = i+j+1;
    }
  }

  sub01(a);

  for(i=0; i<ELM_MAX1 ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      if (a[i][j] != b[i][j]) {
	flag = 1;
	break;
      }
    }
  }

  if(flag) {
    printf(" %lf \n",a[i][j]);
  }
  else {
    printf("OK \n");
  }

  return 0;
}
