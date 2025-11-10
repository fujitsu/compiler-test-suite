




 
struct struct1 {
  int m1;
  int m2;
  int m3[1];
  int b1 :1;
  int b2 :1;
};

int func2() {
  struct struct1 s1;
  s1.m1 = 10;
  s1.m2 = 500;
  s1.m3[0] = 1000;
  return s1.m2;
}
