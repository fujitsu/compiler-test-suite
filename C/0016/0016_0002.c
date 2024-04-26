#include <stdio.h>
#include <complex.h>

void sub(float _Complex *c8d1, float _Complex c8d2, float _Complex c8d3,
	 double _Complex *c16d1, double _Complex c16d2, double _Complex c16d3,
	 int n, int m)
{

  float   _Complex tmp_fc;
  double  _Complex tmp_dc;
  int i;

  *c8d1  = cabsf(c8d2) + 0.0fi;
  *c16d1 = cabs(c16d2) + 0.0i;

  for(i=0; i<n; i++) {
    tmp_fc = cabsf(c8d2) + 1.476482fi;
    *c8d1 = *c8d1 + tmp_fc;
    tmp_dc = cabs(c16d2) + 1.726268i;
    *c16d1 = *c16d1 + tmp_dc;
  }

  for (i=0; i<n; i++) {
    *c8d1 = *c8d1 + (c8d2 - c8d3);
    *c16d1 = *c16d1 + (c16d2 - c16d3);
  }

  if (cabsf(*c8d1) > 10.0f) {
    *c8d1 = 1.0f + 1.0fi;
  }

  if (cabs(*c16d1) > 10.0) {
    *c16d1 = 1.0 + 1.0i;
  }

  for (i=0; i<m; i++) {
    *c8d1 = *c8d1 + *c8d1 * (c8d2 + c8d3);
    *c16d1 = *c8d1 + *c16d1 * (c16d2 + c16d3);
  }
  *c8d1 = *c8d1 + conjf(*c8d1 / (c8d2 + c8d3));
  *c16d1 = *c16d1 + conj(*c16d1 / (c16d2 + c16d3));
  return;
}
int main() {
  int m=10,n=100;
  float _Complex  c8d1, c8d2, c8d3;
  double _Complex c16d1,c16d2,c16d3;
  int ia1, ia2;

  c8d1 = 1.1f + 0.9fi;
  c8d2 = 1.2f + 0.8fi;
  c8d3 = 1.3f + 0.7fi;
  c16d1 = 0.1 + 1.9i;
  c16d2 = 0.2 + 1.8i;
  c16d3 = 0.3 + 1.7i;
  
  sub(&c8d1,c8d2,c8d3,&c16d1,c16d2,c16d3,n,m);
  ia1 = (int)cabsf(c8d1);
  ia2 = (int)cabs(c16d1);
  if ((ia1 == 615867) && (ia2 == 1007707)) {
    printf(" ok\n");
  }else{
    printf(" ng ia1 = %d,  ia2 = %d\n",ia1,ia2);
  }
}
