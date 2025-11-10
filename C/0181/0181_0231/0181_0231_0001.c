__attribute__ ((simd))
void foo(double *a,
	 double *b,
	 double *c,
	 const int len)
{
  int i;
  for (i = 0; i < len; ++i) {
    a[i] = b[i] + c[i];
  }
}
