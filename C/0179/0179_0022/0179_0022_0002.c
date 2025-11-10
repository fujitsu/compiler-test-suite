int pragma_unroll3(float a[], int N, int ans)
{
  int i;
  float k = 0.0f;
  for (i=0; i<N; ++i) {
    k = k + a[i];
  }
  return k;
}
