#include  <stdio.h>
int sub(float *f, double *d, float *fp, double *dp);
int main()
{
float f,f2;
double d,d2;
static float sf = 1.5;
static double sd = 2.5;
f = 10.;
f2 = 11.;
d = 20.;
d2 = 22.;
sub(&sf,&sd,&f,&d);
sub(&sf,&sd,&f2,&d2);
printf("start\n");
if (sf == 1.5) printf("OK-1\n");
else           printf("NG-1\n");
if (sd == 2.5) printf("OK-2\n");
else           printf("NG-2\n");
if (f == 10.)  printf("OK-3\n");
else           printf("NG-3\n");
if (f2 == 11.) printf("OK-4\n");
else           printf("NG-4\n");
if (d == 20.)  printf("OK-5\n");
else           printf("NG-5\n");
if (d2 == 22.) printf("OK-6\n");
else           printf("NG-6\n");
printf("end\n");
}

int sub(f,d,fp,dp)
float *f;
double *d;
float * fp;
double * dp;
{
return 0;
}
