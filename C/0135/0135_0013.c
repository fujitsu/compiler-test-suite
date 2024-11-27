#include <float.h>
#include <stdbool.h>
#include <string.h>
#include <stdio.h>
#include <math.h>


#define    m   100

static bool dbl_is_equal(double a, double b);

int main(void)
{
  short      h=5;
  float      l[m];
  double     d[m];
  int        i,j,n;

  for(i=0;i<m;i++) d[i]=l[i]=.0;
  for(i=1;i<m;i++) 
    {
      d[i]=i+h;
      if( dbl_is_equal(d[i], (d[i]/i*i)) ) l[m-i]=1;
      h++;
      for(j=h;j>0;j--) {
	if( j<m ) d[j]+=(j*j/(j+1));
      }
      d[i]=d[i]/17*i;
    }
  printf("##  ##\n");
  for(i=0;i<m;i++) {
    printf("D ==> %g ",d[i]);
    n=i%9;
    if(n==0 && i!=0) printf("\n");
  }
  for(i=0;i<m;i++) {
    printf("L ==> %f ",l[i]);
    n=i%9;
    if(n==0 && i!=0) printf("\n");
  }
  return 0;
}


static bool dbl_is_equal(double a, double b) {
  double diff, eps;
  if( a == b ) {
    return true;
  }
  if( isnan(a) || isnan(b) ) {
    return false;
  }
  if( isinf(a) && isinf(b) && a > 0 && b > 0
      || isinf(a) && isinf(b) && a < 0 && b < 0 ) {
    return true;
  }
  if( isinf(a) && a > 0 && b > DBL_MAX * (1.0 - sqrt(DBL_EPSILON)) 
      || isinf(a) && a < 0 && b < DBL_MIN * (1.0 - sqrt(DBL_EPSILON))
      || isinf(b) && b > 0 && a > DBL_MAX * (1.0 - sqrt(DBL_EPSILON))
      || isinf(b) && b < 0 && a < DBL_MIN * (1.0 - sqrt(DBL_EPSILON)) ) {
    return true;
  }
  if( a == 0.0 && fabs(b) < sqrt(DBL_EPSILON)
      || b == 0.0 && fabs(a) < sqrt(DBL_EPSILON) ) {
    return true;
  }
  eps = DBL_EPSILON * fmin(fabs(a), fabs(b));
  diff = fabs(a - b);
  return (diff < eps);
}
