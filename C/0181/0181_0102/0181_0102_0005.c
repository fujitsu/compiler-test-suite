static void sub(float a[2][2][2][2], float b[2][2][2][2])
{
  int i,j,k,n;

  for (n=0;n<2;++n) {
    for (k=0;k<2;++k) {
      for (j=0;j<2;++j) {
	for (i=0;i<2;++i) {
	  a[n][k][j][i] = a[n][k][j][i] + b[n][k][j][i];
	}
      }
    }
  }
}

int lto_sub_5(void) 
{
  float a[2][2][2][2], b[2][2][2][2];
  int i,j,k,n;
  
  for (n=0;n<2;++n) {
    for (k=0;k<2;++k) {
      for (j=0;j<2;++j) {
	for (i=0;i<2;++i) {
	  a[n][k][j][i] = b[n][k][j][i] = 1.;
	}
      }
    }
  }
  sub(a,b);
  return 0;
}
