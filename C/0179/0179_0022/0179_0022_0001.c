
int pragma_unroll(float a[], int N, int ans) 
{
  int i;
  float k = 0.0f;
  for (i=0; i<N/2; ++i) {
    k = k + a[i];
  }
  for (i=N/2; i<N; ++i) {
    k = k + a[i];
  }
  return (int)k;
}

int pragma_unroll2(float a[], int N, int ans)
{
  int i;
  float k = 0.0f;
  for (i=0; i<N; ++i) {
    k = k + a[i];
  }
  return k;
}
