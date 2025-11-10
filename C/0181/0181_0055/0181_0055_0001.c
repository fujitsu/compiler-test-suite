




 
struct struct_ {
  int m1;
  int m2;
  int m3[2];
  int b1 :1;
  int b2 :1;
};

int func() {
  struct struct_ s1;
  s1.m1 = 10;
  s1.m2 = 500;
  return s1.m1;
}
