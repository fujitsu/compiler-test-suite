void sub(float a[3][3], float b[3][3])
{
  int i,j;

  for (j=0;j<3;++j) {
    for (i=0;i<3;++i) {
      a[j][i] = a[j][i] + b[j][i];
    }
  }
}

int main(void) 
{
  float a[3][3], b[3][3];
  int i,j;
  
  for (j=0;j<3;++j) {
    for (i=0;i<3;++i) {
      a[j][i] = b[j][i] = 1.0;
    }
  }
  sub(a,b);
  return 0;
}
