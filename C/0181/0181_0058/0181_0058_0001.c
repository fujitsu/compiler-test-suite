




 
struct struct_ {
  float  m1;
  double m2;
  double m3[2];
  int b1 :1;
  int b2 :1;
};

int func() {
  struct struct_ s1;
  s1.m1 = 10.0;
  s1.m2 = 500.0;
  return (int)(s1.m1);
}
