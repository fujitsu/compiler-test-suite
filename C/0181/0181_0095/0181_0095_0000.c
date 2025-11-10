



 
union union1 {
  int  m1;
  long m2;
  int  m3[2];
};

#if ARG_S1
extern int func(union union1 *up);
#else 
extern int func();
#endif

#if MULTI_SEC 
#if ARG_S2
extern int func2(union union1 *up);
#else 
extern int func2();
#endif 
#endif 

extern int printf(const char *, ...);

int main() {
  union union1 uni1;
  int i;
#if MULTI_SEC 
  int j;
#endif 

  uni1.m3[0] = 10;
  uni1.m3[1] = 500;

#if ARG_S1
  i = func(&uni1);
#else 
  i = func();
#endif 

#if MULTI_SEC 
#if ARG_S2
  j = func2(&uni1);
#else 
  j = func2();
#endif 
  if (i == uni1.m3[0] && j == uni1.m3[1]) {
    printf("OK\n");
  }
  else {
    printf("NG: i=%d, j=%d\n", i, j);
  }
#else 
  if (i == uni1.m3[0]) {
    printf("OK\n");
  }
  else {
    printf("NG: i=%d\n", i);
  }
#endif 
  return 0;
}
