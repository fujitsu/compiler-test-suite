#include <stdio.h>

void sub(double a[], double b[], double n) {
  int i;
  for (i = 1; i < n; ++i) {
    b[i] = a[i-1] * a[i]; 
  }
}
int main() {
  int i;
  double a[2000];
  double b[2000];

  for (i = 0; i < 2000; ++i) {
    a[i] = (double)i + 11.11;
    b[i] = 0.0;
  }
  
  sub(a,b,2000);

  if ( b[0] == 0.000000
      && b[9] == 384.302100
      && b[99] == 12014.102100
      && b[999] == 1019312.102100 
      && b[1999] == 4038532.102100 
    ){
    puts("OK");
  } else {
    puts("NG");
    printf("%lf, %lf, %lf, %lf, %lf\n",
	   b[0], b[9], b[99], b[999], b[1999]);
  }
}
