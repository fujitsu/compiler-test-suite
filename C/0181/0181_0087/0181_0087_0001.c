




 
union union1 {
  int  m1;
  long m2;
  int  m3[2];
};

int func1(union union1 *up) {
  return up->m1;
}

#if ARG_S1
int func(union union1 *up) {
  union union1 u1;
  u1.m1 = 10;
  up = &u1;
  return up->m1;
}
#else 
int func() {
  union union1 u1;
  u1.m1 = 10;
  return u1.m1;
}
#endif 
