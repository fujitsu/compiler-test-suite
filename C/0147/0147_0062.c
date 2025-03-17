
#include <stdio.h>
#include <complex.h>

void sub1(int i1,double _Complex a)
{
  double _Complex b;

  if( i1 != 1 ) {
    puts("NG");
  }

  b = conj(a);

  if (creal(b) == 50.0 && cimag(b) == -3.0){
    ;
  }else{
    printf("NG7 (%f,%f)\n",creal(b),cimag(b));
  }
  return;
}

void sub2(int i1,int i2,double _Complex a)
{
  double _Complex b;

  if( i1 != 1 || i2 != 2 ) {
    puts("NG");
  }

  b = conj(a);

  if (creal(b) == 50.0 && cimag(b) == -3.0){
    ;   
  }else{
    printf("NG8 (%f,%f)\n",creal(b),cimag(b));
  }
  return;
}

const double g_array[] = {
  0.0,
  50.000 , 3.000,
  50.000 , 3.000,
  50.000 , 3.000,
  50.000 , 3.000
};
int main()
{
  int i,n = 4;
  const double a_array[] = {
    0.0,
    50.000 , 3.000,
    50.000 , 3.000,
    50.000 , 3.000,
    50.000 , 3.000
  };

  const static double s_array[] = {
    0.0,
    50.000 , 3.000,
    50.000 , 3.000,
    50.000 , 3.000,
    50.000 , 3.000
  };

  double const _Complex *p1 = (double _Complex *) &a_array[1];
  double const _Complex *p2 = (double _Complex *) &g_array[1];
  double const _Complex *p3 = (double _Complex *) &s_array[1];

  sub1 (1,conj(50.000 + -3.000i));
  sub2 (1,2,conj(50.000 + -3.000i));

  for(i=0;i<n;i++) {
    sub1 (1,p1[i]);
    sub2 (1,2,p1[i]);
    sub1 (1,p2[i]);
    sub2 (1,2,p2[i]);
    sub1 (1,p3[i]);
    sub2 (1,2,p3[i]);
  }

  puts("PASS");
}
