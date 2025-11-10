




 
struct struct1 {
  int m1;
  int m2;
  int m3[3];
  int b1 :1;
  int b2 :1;
};

int func() {
  struct struct1 s1;
  s1.m1 = 10;
  s1.m2 = 500;
  s1.m3[0] = 1000;
  s1.m3[1] = 2000;
  s1.m3[2] = 3000;
  return s1.m1;
}
