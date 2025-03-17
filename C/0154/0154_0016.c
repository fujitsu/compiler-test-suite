#include <stdio.h>

void sub(float a[], float b[], float n) {
  int i;
  b[0] = 0.0f;
  for (i = 1; i < n; ++i) {
    b[i] = a[i-1] * a[i]; 
  }
}
int main() {
  int i;
  float a[5000];
  float b[5000];

  for (i = 0; i < 5000; ++i) {
    a[i] = (float)i + 11.11f;
  }
  
  sub(a,b,5000);

  if (b[0]       == 0.000000f
      && b[9]    == 384.302124f
      && b[99]   == 12014.10253f
      && b[999]  == 1019312.062f
      && b[1999] == 4038532.000f
      && b[2999] == 9057753.000f 
      && b[3999] == 16076973.00f
      && b[4999] == 25096190.00f) {
    puts("OK");
  } else {
    puts("NG");
    printf("%f, %f, %f, %f, %f, %f, %f, %f\n",
	   b[0], b[9], b[99], b[999], b[1999], b[2999], b[3999], b[4999]);
  }
}
