
#define N 1000

int main(void)
{
  int i;
  double a[N], b[N], c[N], tmp;

  for(i=0; i<N; ++i) {
    tmp = a[i] + c[i];
    b[i] = tmp + c[i];
  }
  return 0;
}
