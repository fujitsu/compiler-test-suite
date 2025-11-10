static void sub(float a[3][3][3], float b[3][3][3])
{
  int i,j,k;

  for (k=0;k<3;++k) {
    for (j=0;j<3;++j) {
      for (i=0;i<3;++i) {
	a[k][j][i] = a[k][j][i] + b[k][j][i];
      }
    }
  }
}

int lto_sub_2(void) 
{
  float a[3][3][3], b[3][3][3];
  int i,j,k;
  
  for (k=0;k<3;++k) {
    for (j=0;j<3;++j) {
      for (i=0;i<3;++i) {
	a[k][j][i] = b[k][j][i] = 1.0;
      }
    }
  }
  sub(a,b);
  return 0;
}
