




 
union union1 {
  long m1;
  long m2;
  long m3[2];
};

int func2() {
  union union1 u2;
  u2.m1 = 500;
  return (int)u2.m1;
}
