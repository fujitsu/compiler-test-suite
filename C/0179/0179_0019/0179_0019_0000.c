float pragma_fmadd(float a[10], float b[10], float c[10], float sum)
{
  int i;
  for(i = 0; i < 10; ++i) {
    a[i] = a[i] + b[i] * c[i];
    sum += a[i];
  }
  return sum;
}

float pragma_fmadd1(float a[10], float b[10], float c[10], float sum)
{
  int i;
  for(i = 0; i < 10; ++i) {
    a[i] = a[i] + b[i] * c[i];
    sum += a[i];
  }
  return sum;
}

