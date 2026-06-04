#define N 1000


int main()
{
  int i, j, a[N], b[N][N];

  for (j=0; j<N; ++j) {
    for (i=0; i<N; ++i) {
      a[i] = a[i] + b[j][i];
    }
  }
  return 0;
}
