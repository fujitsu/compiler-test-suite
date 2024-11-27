#include <stdio.h>

double *a;
double *b;
double *c;

void sub_clone(int N1, int N2, int M, int NVAR, double *d, double *e) {
  int NVAR2;
  int i,j,k,l,m;
  int tmp1,tmp2,tmp3,tmp4;
  
    NVAR2 = NVAR*NVAR;
  for (i=N1; i<=N2; ++i) {
    tmp1 = (i-1)*3;
    for (j=d[i] ;j<=e[i]-1; ++i) { 
      tmp2 = (j-1)*NVAR2;
      tmp3 = (d[j]-1)*3;
      for(m=1; m<=NVAR; ++m) {              
	a[m] = 0.0;
      } 
      for(k=1; k<=NVAR; ++k) {              
	tmp4 = tmp2 + (k-1)*NVAR;           
	for(l=1; l<=NVAR; ++l) {            
	  a[k]= a[k]+b[tmp4+l]*c[tmp3+l];
	}
      }
      for(m=1; m<=NVAR; ++m) {              
	c[tmp1+m] = c[tmp1+m] - a[m];
      }
    }
  }
}

int main(void) {
  puts("OK");
}
