




 
union union1 {
  int  m1;
  long m2;
  int  m3[2];
  short m4;
  float m5;
};

int func2() {
  union union1 u2;
  u2.m1 = 500;
  return u2.m1;
}
