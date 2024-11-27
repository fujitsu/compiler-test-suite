#include <stdio.h>
#include <stdbool.h>
#line 10
void test (int n, int a[], int b[], int c[]) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = b[i] + c[i] + i;
  }
}

int main() {
  int x;
  int a[100000], b[100000], c[100000];
  int ret;
  
  for (x = 0; x < 100000; x++) {
    b[x] = c[x] = 5;
  }

  test(100000, a, b, c);
  if (a[5] == 15)
    puts ("OK");
  else
    puts ("NG");

}
