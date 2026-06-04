#define N 1000

int test01()
{
  int i, j, a[N], b[N][N];

  for (j=0; j<N; ++j) {
    for (i=0; i<N; ++i) {
      a[i] = a[i] + b[j][i];
    }
  }
  return 0;
}

int test02()
{
  int i, j, a[N], b[N][N];

  for (j=0; j<N; ++j) {
    for (i=0; i<N; ++i) {
      a[i] = a[i] + b[j][i];
    }
  }
  return 0;
}

int test03()
{
  int i, j, a[N], b[N][N];

  for (j=0; j<N; ++j) {
    for (i=0; i<N; ++i) {
      a[i] = a[i] + b[j][i];
    }
  }
  return 0;
}

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
