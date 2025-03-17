#include <stdio.h>

void sub(long double a[], long double b[], long double n) {
  int i;
  for (i = 1; i < n; ++i) {
    b[i] = a[i-1] * a[i]; 
  }
}
int main() {
  int i;
  long double a[2000];
  long double b[2000];

  for (i = 0; i < 2000; ++i) {
    a[i] = (long double)i + 11.00;
    b[i] = 0.0;
  }
  
  sub(a,b,2000);

  if ( b[0] == 0.000000
      && b[9] == 380.000000
      && b[99] == 11990.000000
      && b[999] == 1019090.000000
      && b[1999] == 4038090.000000
    ){
    puts("OK");
  } else {
    puts("NG");
    printf("%Lf, %Lf, %Lf, %Lf, %Lf\n",
	   b[0], b[9], b[99], b[999], b[1999]);
  }
}
