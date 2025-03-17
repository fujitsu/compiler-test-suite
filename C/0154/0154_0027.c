#include <stdio.h>

void sub(int count, float a[]) {
  int i;

  for (i = 1; i < count; ++i) {
    a[i] = a[i] + a[i-1];
  }
}
int main() {
  float a[] = {1.f,3.f,5.f,7.f,9.f};

  sub(5, a);

  if (a[0] == 1.f && a[1] == 4.f && a[2] == 9.f && a[3] == 16.f && a[4] == 25.f) {
    puts("OK");
  } else {
    puts("NG");
    printf("%f,%f,%f,%f,%f\n",a[0],a[1],a[2],a[3],a[4]);
  }
}
