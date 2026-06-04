extern char ccc;
extern short sss;
extern int iii;
extern long lll;
extern float fff;
extern double ddd;
extern long double ldd;
#pragma omp threadprivate(ccc,sss,iii,lll,fff,ddd,ldd)
void func3(void) {
  ccc = 3;
  sss = 3;
  iii = 3;
  lll = 3;
  fff = 3.0;
  ddd = 3.0;
  ldd = 3.0;
}
