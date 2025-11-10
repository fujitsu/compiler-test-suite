




 
union union1 {
  int  m1;
  long m2;
  int  m3[2];
};

#if ARG_S2
int func2(union union1 *up) {
  union union1 u2;
  u2.m1 = 500;
  up = &u2;
  return up->m1;
}
#else 
int func2() {
  union union1 u2;
  u2.m1 = 500;
  return u2.m1;
}
#endif 
