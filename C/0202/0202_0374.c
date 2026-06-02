#define N 1000
int main()
{
  int i, j, a[N][N];

  for (i=0; i<N; ++i) {
    for (j=0; j<N; ++j) {
      a[i][j] = a[i-1][j-1];
    }
  }
  return 0;
}
