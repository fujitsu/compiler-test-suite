long foo(double *a, int n, int c) {
  int i;
  long ret;
  for(i=0;i<n;++i) {
    ret = c + (long)a[i];
  }
  return ret;
}
int main() {
  double a[100];
  foo(a,3,100);
}
