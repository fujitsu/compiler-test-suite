




 
union union1 {
  int  m1;
  long m2;
  int  m3[2];
  short m4;
};

int func() {
  union union1 u1;
  u1.m1 = 10;
  return u1.m1;
}
