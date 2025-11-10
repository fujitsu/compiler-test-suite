#include <stdio.h>

extern int argsconflict_float(float var, short *sp, unsigned short *usp, int *ip, unsigned int *uip, long long *llp, unsigned long long *ullp, float *fp, double *dp, long double *ldp);
extern int argsconflict_double(double var, short *sp, unsigned short *usp, int *ip, unsigned int *uip, long long *llp, unsigned long long *ullp, float *fp, double *dp, long double *ldp);
extern int argsconflict_longdouble(long double var, short *sp, unsigned short *usp, int *ip, unsigned int *uip, long long *llp, unsigned long long *ullp, float *fp, double *dp, long double *ldp);

int main(void)
{
  short *sp;
  unsigned short *usp;
  int *ip;
  unsigned int *uip;
  long long int *llp;
  unsigned long long int *ullp;
  float *fp;
  double *dp;
  long double *ldp;
  
  {
    float flt_var;
    flt_var = 1.0f;
    sp = (short *)&flt_var;
    usp = (unsigned short *)&flt_var;
    ip = (int *)&flt_var;
    uip = (unsigned int *)&flt_var;
    llp = (long long *)&flt_var;
    ullp = (unsigned long long *)&flt_var;
    fp = (float *)&flt_var;
    dp = (double *)&flt_var;
    ldp = (long double *)&flt_var;
    if (argsconflict_float(flt_var, sp, usp, ip, uip, llp, ullp, fp, dp, ldp))
      printf("ok\n");
    else
      printf("ng\n");
  }

  {
    double dbl_var;
    dbl_var = 2.0;
    sp = (short *)&dbl_var;
    usp = (unsigned short *)&dbl_var;
    ip = (int *)&dbl_var;
    uip = (unsigned int *)&dbl_var;
    llp = (long long *)&dbl_var;
    ullp = (unsigned long long *)&dbl_var;
    fp = (float *)&dbl_var;
    dp = (double *)&dbl_var;
    ldp = (long double *)&dbl_var;
    if (argsconflict_double(dbl_var, sp, usp, ip, uip, llp, ullp, fp, dp, ldp))
      printf("ok\n");
    else
      printf("ng\n");
  }

  {
    long double ldbl_var;
    ldbl_var = 3.0l;
    sp = (short *)&ldbl_var;
    usp = (unsigned short *)&ldbl_var;
    ip = (int *)&ldbl_var;
    uip = (unsigned int *)&ldbl_var;
    llp = (long long *)&ldbl_var;
    ullp = (unsigned long long *)&ldbl_var;
    fp = (float *)&ldbl_var;
    dp = (double *)&ldbl_var;
    ldp = (long double *)&ldbl_var;
    if (argsconflict_longdouble(ldbl_var, sp, usp, ip, uip, llp, ullp, fp, dp, ldp))
      printf("ok\n");
    else
      printf("ng\n");
  }
}
