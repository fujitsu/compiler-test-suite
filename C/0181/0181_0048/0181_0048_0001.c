




 
struct struct1 {
  int m1;
  int m2;
  int m3[2];
  int b1 :1;
  int b2 :1;
};

int func1(struct struct1 *sp) {
  struct struct1 s1;
  sp = &s1;
  return sp->m1;
}

#if ARG_S1
int func(struct struct1 *sp) {
  struct struct1 s1;
  s1.m1 = 10;
  s1.m2 = 500;
  sp = &s1;
  return sp->m1;
}
#else 
int func() {
  struct struct1 s1;
  s1.m1 = 10;
  s1.m2 = 500;
  return s1.m1;
}
#endif 
