




 
union union1 {
  int  m1;
  long m2;
  long m3[2];
};

int func() {
  union union1 u1;
  u1.m1 = 10;
  return u1.m1;
}
