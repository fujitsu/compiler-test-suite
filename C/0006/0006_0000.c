#include <stdio.h>
#include <math.h>
#include <complex.h>

#if !defined(ROLL_TIMES)
#define ROLL_TIMES 16
#endif

#define N (ROLL_TIMES*2)

#define IS_EQUAL_F(a,b) (a==b || cabs(a-b)<10E-7)
#define IS_EQUAL_D(a,b) (a==b || cabs(a-b)<10E-14)

double _Complex dr[N],da[N],db[N],dc[N];
float  _Complex fr[N],fa[N],fb[N],fc[N];

void init(void) {
  int i;  
  for(i=0; i<ROLL_TIMES;++i) {
    da[i] = 2*i     - 2*i     *I;
    fa[i] = 2*i     - 2*i     *I;
    db[i] = (2*i+1) + (2*i+1) *I;
    fb[i] = (2*i+1) + (2*i+1) *I;
    dc[i] = 0+0*I;
    fc[i] = 0+0*I;
    dr[i] = da[i]*db[i];
    fr[i] = fa[i]*fb[i];
  }
}

void test(void) {
  int i;
  for(i=0; i<ROLL_TIMES;++i) {
    dc[i]=da[i]*db[i];
    fc[i]=fa[i]*fb[i];
  }
}

int main()
{
  int i;
  init();
  test();

  for(i=0;i<ROLL_TIMES;++i) {
    if(!IS_EQUAL_F(fr[i], fc[i])) {
      printf("F:(%lf %lf) != (%lf %lf)\n",creal(fc[i]),cimag(fc[i]),creal(fr[i]),cimag(fr[i]));
      puts("NG");
    }
    if(!IS_EQUAL_D(dr[i], dc[i]))  {
      printf("D:(%lf %lf) != (%lf %lf)\n",creal(dc[i]),cimag(dc[i]),creal(dr[i]),cimag(dr[i]));
      puts("NG");
    }
  }
  puts("OK");
  return 0;
}
