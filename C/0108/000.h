void test (int n, int a[], int b[], int c[]) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = b[i] + c[i] + i;
  }
}
