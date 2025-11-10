



 
struct struct1 {
  int m1;
  int m2;
  int m3[2];
  int b1 :1;
  int b2 :1;
};

#if ARG_S1
  extern int func(struct struct1 *sp);
#else 
  extern int func();
#endif 

#if MULTI_SEC 
#if ARG_S2
  extern int func2(struct struct1 *sp);
#else 
  extern int func2();
#endif 
#endif 

extern int printf(const char *, ...);

int main() {
  struct struct1 st1;
  int i;
#if MULTI_SEC 
  int j;
#endif 

  st1.m1 = 10;
  st1.m2 = 500;

#if ARG_S1
  i = func(&st1);
#else 
  i = func();
#endif 

#if MULTI_SEC 
#if ARG_S2
  j = func2(&st1);
#else 
  j = func2();
#endif 
  if (i == st1.m1 && j == st1.m2) {
    printf("OK\n");
  }
  else {
    printf("NG: i=%d, j=%d\n", i, j);
  }
#else 
  if (i == st1.m1) {
    printf("OK\n");
  }
  else {
    printf("NG: i=%d\n", i);
  }
#endif 
  return 0;
}
