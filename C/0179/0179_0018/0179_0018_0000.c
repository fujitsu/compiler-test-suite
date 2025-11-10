
float pragma_eval(float a[10], float b[10], int n)
{
  int i;
  float sum = .0f;
  for(i = 0; i < n; ++i) {
    a[i] = b[i] / 3;
    sum += a[i];
  }
  return sum;
}

float pragma_eval1(float a[10], float b[10], int n)
{
  int i;
  float sum = .0f;
  for(i = 0; i < n; ++i) {
    a[i] = b[i] / 3;
    sum += a[i];
  }
  return sum;
}

float pragma_eval2(float a[10], float b[10], int n)
{
  int i;
  float sum = .0f;
  for(i = 0; i < n; ++i) {
    a[i] = b[i] / 3;
    sum += a[i];
  }
  return sum;
}


float pragma_eval3(float a[10], float b[10], int n)
{
  int i;
  float sum = .0f;
  for(i = 0; i < n; ++i) {
    a[i] = b[i] / 3.;
    sum += a[i];
  }
  return sum;
}


