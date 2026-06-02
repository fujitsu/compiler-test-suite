#define N 1000


void sub_clone(int var)
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
  sub_clone(3);
  return 0;
}
