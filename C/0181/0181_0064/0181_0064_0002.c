




 
struct struct1 {
  int m1;
  int m2;
  int m3[2];
  int b1 : 10;
  int b2 : 26;
};

int func2() {
  struct struct1 s1;
  s1.m1 = 10;
  s1.m2 = 500;
  return s1.m2;
}
