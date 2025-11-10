




 
struct struct1 {
  int m1;
  int m2;
  int m3[2];
  int b1 :1;
  int b2 :1;
};

#if ARG_S2
int func2(struct struct1 *sp) {
  struct struct1 s2;
  s2.m1 = 10;
  s2.m2 = 500;
  sp = &s2;
  return sp->m2;
}
#else 
int func2() {
  struct struct1 s2;
  s2.m1 = 10;
  s2.m2 = 500;
  return s2.m2;
}
#endif 
