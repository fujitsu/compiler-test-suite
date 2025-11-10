int argsconflict_float(float var, short *sp, unsigned short *usp, int *ip, unsigned int *uip, long long *llp, unsigned long long *ullp, float *fp, double *dp, long double *ldp)
{
  float *f1 = (float *)sp;
  float *f2 = (float *)usp;
  float *f3 = (float *)ip;
  float *f4 = (float *)uip;
  float *f5 = (float *)llp;
  float *f6 = (float *)ullp;
  float *f7 = (float *)fp;
  float *f8 = (float *)dp;
  float *f9 = (float *)ldp;

  return (var == *f1 && var == *f2 && var == *f3 && var == *f4 && var == *f5 && var == *f6 && var == *f7 && var == *f8 && var == *f9);
}

int argsconflict_double(double var, short *sp, unsigned short *usp, int *ip, unsigned int *uip, long long *llp, unsigned long long *ullp, float *fp, double *dp, long double *ldp)
{
  double *f1 = (double *)sp;
  double *f2 = (double *)usp;
  double *f3 = (double *)ip;
  double *f4 = (double *)uip;
  double *f5 = (double *)llp;
  double *f6 = (double *)ullp;
  double *f7 = (double *)fp;
  double *f8 = (double *)dp;
  double *f9 = (double *)ldp;

  return (var == *f1 && var == *f2 && var == *f3 && var == *f4 && var == *f5 && var == *f6 && var == *f7 && var == *f8 && var == *f9);
}

int argsconflict_longdouble(long double var, short *sp, unsigned short *usp, int *ip, unsigned int *uip, long long *llp, unsigned long long *ullp, float *fp, double *dp, long double *ldp)
{
  long double *f1 = (long double *)sp;
  long double *f2 = (long double *)usp;
  long double *f3 = (long double *)ip;
  long double *f4 = (long double *)uip;
  long double *f5 = (long double *)llp;
  long double *f6 = (long double *)ullp;
  long double *f7 = (long double *)fp;
  long double *f8 = (long double *)dp;
  long double *f9 = (long double *)ldp;

  return (var == *f1 && var == *f2 && var == *f3 && var == *f4 && var == *f5 && var == *f6 && var == *f7 && var == *f8 && var == *f9);
}
