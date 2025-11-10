




 
struct struct1 {
  int m1;
  int m2;
  int m3[2];
  int b1 : 28;
  int b2 : 10;
};

int func() {
  struct struct1 s1;
  s1.m1 = 10;
  s1.m2 = 500;
  return s1.m1;
}
