void sub(float a[3][3], float b[3][3], float c[4][4], float d[4][4])
{
  int i,j;

  for (j=0;j<3;++j) {
    for (i=0;i<3;++i) {
      a[j][i] = a[j][i] + b[j][i];
    }
  }
  for (j=0;j<4;++j) {
    for (i=0;i<4;++i) {
      c[j][i] = c[j][i] + d[j][i];
    }
  }
}

int main(void) 
{
  float a[3][3], b[3][3];
  float c[4][4], d[4][4];
  int i,j;
  
  for (j=0;j<3;++j) {
    for (i=0;i<3;++i) {
      a[j][i] = b[j][i] = 1.0;
    }
  }
  for (j=0;j<4;++j) {
    for (i=0;i<4;++i) {
      c[j][i] = d[j][i] = 2.0;
    }
  }
  sub(a,b,c,d);
  return 0;
}
