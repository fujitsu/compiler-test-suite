




 
union uni {
  int  m1;
  long m2;
  int  m3[2];
};

int func() {
  union uni u1;
  u1.m1 = 10;
  return u1.m1;
}
