char ccc;
short sss;
int iii;
long lll;
float fff;
double ddd;
long double ldd;
#pragma omp threadprivate(ccc,sss,iii,lll,fff,ddd,ldd)
void func1(void) {
  ccc = 1;
  sss = 1;
  iii = 1;
  lll = 1;
  fff = 1.0;
  ddd = 1.0;
  ldd = 1.0;
}
