#define N 1000

static void init(int[][N]);
static void init_c(int[]);

int pragma_norecurrence() 
{
  int a[N][N];
  int b[N][N];
  int c[N];
  int i, j, sum = 0;

  init(a);
  init(b);
  init_c(c);
  
  for(i = 0; i < N; ++i) {
    for(j = 0; j < N; ++j) {
      a[j][c[i]] = a[j][c[i]] + b[j][i];
      sum += a[j][c[i]];
    }
  }
  return sum;
}

static void init(int x[][N])
{
  int i,j;
  for (i = 0; i < N; ++i) {
    for (j = 0; j < N; ++j) {
      x[i][j] = i ;
    }
  }
}

static void init_c(int c[])
{
  int i;
  for (i = 0; i < N; ++i) {
      c[i] = i ;
  }
}

