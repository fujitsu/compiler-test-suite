void foo(int *a, int *b, int *c, const int len)
{
#pragma GCC ivdep
  for (int i = 0; i < len; ++i) {
    a[i] = b[i] + c[i];
  }
}
