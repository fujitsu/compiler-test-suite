#include <stdio.h>
#include <stdbool.h>

void test (int n, int a[], int b[], int c[]) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = b[i] + c[i] + i;
  }
}

bool test2 (char* str) {

  bool found_p = false;
  while (*str != '\0') {
    if (*str == 'n')
      {
	found_p = true;
	break;
      }
    ++str;
  }

  return found_p;
}

int test3 (int a[]) {
  int i = 0;
  int ret = 0;
  
  do {
    i++;
    ret += a[i];
  }
  while (a[i] > 0);

  return ret;
  ;
  ;
  ;
}

int main() {
  int x;
  int a[100000], b[100000], c[100000];
  int ret;
  
  for (x = 0; x < 100000; x++) {
    b[x] = c[x] = 5;
  }

  test(100000, a, b, c);
  if (a[5] > 15 || a[15] < 15)
    printf ("NG\n");

  if (test2("012345n6789"))
    printf ("OK\n");

  if (test2("012345678901234567890123456789"))
    printf ("NG\n");

  b[543] = 0;
  ret = test3 (b);
  if (ret != 2710)
    puts ("NG");
}
