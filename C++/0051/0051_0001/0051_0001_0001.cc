extern char ccc;
extern short sss;
extern int iii;
extern long lll;
extern float fff;
extern double ddd;
extern long double ldd;
#pragma omp threadprivate(ccc,sss,iii,lll,fff,ddd,ldd)
void func2(void) {
  ccc = 2;
  sss = 2;
  iii = 2;
  lll = 2;
  fff = 2.0;
  ddd = 2.0;
  ldd = 2.0;
}
