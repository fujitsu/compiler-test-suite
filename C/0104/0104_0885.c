long foo(double *a, int n) {
  int i;
  long ret;
  for(i=0;i<n;++i) {
    ret = (long)a[i];
  }
  return ret;
}
int main() {
  double a[100];
  foo(a,100);
}
