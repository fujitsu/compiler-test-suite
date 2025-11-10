static void sub(float a[3], float b[3], float c[4], float d[4])
{
  int i;

  for (i=0;i<3;++i) { a[i] = a[i] + b[i]; }; for (i=0;i<4;++i) { c[i] = c[i] + d[i]; }
}

int lto_sub_14(void) 
{
  float a[3], b[3];
  float c[4], d[4];
  int i;
  
  for (i=0;i<3;++i) a[i] = b[i] = 1.0; for (i=0;i<4;++i) c[i] = d[i] = 2.0;
  sub(a,b,c,d);
  return 0;
}
