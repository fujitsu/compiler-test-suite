




 
union uni_ {
  int  m1;
  long m2;
  int  m3[2];
};

int func2() {
  union uni_ u2;
  u2.m1 = 500;
  return u2.m1;
}
