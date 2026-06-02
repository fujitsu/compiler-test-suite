#define N 1000


void sub_all()
{
  int i, j, a[N], b[N][N];

  for (j=0; j<N; ++j) {
    for (i=0; i<N; ++i) {
      a[i] = a[i] + b[j][i];
    }
  }
}


void sub_mod()
{
  int i, j, a[N], b[N][N];

  for (j=0; j<N; ++j) {
    for (i=0; i<N; ++i) {
      a[i] = a[i] + b[j][i];
    }
  }
}


void sub_n()
{
  int i, j, a[N], b[N][N];

  for (j=0; j<N; ++j) {
    for (i=0; i<N; ++i) {
      a[i] = a[i] + b[j][i];
    }
  }
}

int main()
{
  sub_all();
  sub_mod();
  sub_n();

  return 0;
}
