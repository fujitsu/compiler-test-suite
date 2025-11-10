
static void sub(float a[100][100], float b[100][100], int n)
{
  int i,j;

  for (j=0;j<n;++j) {
    for (i=0;i<n;++i) {
      a[j][i] = a[j][i] + b[j][i];
    }
  }
}

int lto_sub_7(void) 
{
  float a[100][100], b[100][100];
  int i,j;
  
  for (j=0;j<100;++j) {
    for (i=0;i<100;++i) {
      a[j][i] = b[j][i] = 1.0;
    }
  }
  sub(a,b,3);
  return 0;
}
