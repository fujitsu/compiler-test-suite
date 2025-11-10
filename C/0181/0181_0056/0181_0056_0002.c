




 
struct struct_2 {
  int m1;
  int m2;
  int m3[2];
  int b1 :1;
  int b2 :1;
};

int func2() {
  struct struct_2 s2;
  s2.m1 = 10;
  s2.m2 = 500;
  return s2.m2;
}
