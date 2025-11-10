static void sub(float a[10][10], float b[10][10])
{
  int i,j;

  for (j=0;j<10;j+=2) {
    for (i=0;i<10;i+=2) {
      a[j][i] = a[j][i] + b[j][i];
    }
  }
}

int lto_sub_15(void) 
{
  float a[10][10], b[10][10];
  int i,j;
  
  for (j=0;j<10;++j) {
    for (i=0;i<10;++i) {
      a[j][i] = b[j][i] = 1.0;
    }
  }
  sub(a,b);
  return 0;
}
