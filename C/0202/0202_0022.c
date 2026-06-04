#define N 1000

int main(void)
{
  int i;
  double a[N], b[N], c[N];
  
  for(i=0; i<N; ++i) {
    a[i] = a[i] * b[i] + c[i];
  }
  return 0;
}
