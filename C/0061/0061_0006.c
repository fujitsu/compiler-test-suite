
void sub(float a[100], float b[100], int n)
{
  int i;

  for (i=0;i<n;++i) {
    a[i] = a[i] + b[i];
  }
}

int main(void) 
{
  float a[100], b[100];
  int i;
  
  for (i=0;i<100;++i) {
    a[i] = b[i] = 1.0;
  }
  sub(a,b,3);
  return 0;
}
