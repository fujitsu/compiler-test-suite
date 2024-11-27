void sub(float a[3], float b[3])
{
  int i;

  for (i=0;i<3;++i) {
    a[i] = a[i] + b[i];
  }
}

int main(void) 
{
  float a[3], b[3];
  int i;
  
  for (i=0;i<3;++i) {
    a[i] = b[i] = 1.0;
  }
  sub(a,b);
  return 0;
}
