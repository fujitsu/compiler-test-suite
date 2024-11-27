void sub(float a[8][8], float b[8][8])
{
  int i,j;

  j = 0;
  while (j<8) {
    i=0;
    while (i<8) {
      a[j][i] = a[j][i] + b[j][i];
      ++i;
    }
    ++j;
  }
}

int main(void) 
{
  float a[8][8], b[8][8];
  int i,j;
  
  for (j=0;j<8;++j) {
    for (i=0;i<8;++i) {
      a[j][i] = b[j][i] = 1.0;
    }
  }
  sub(a,b);
  return 0;
}
