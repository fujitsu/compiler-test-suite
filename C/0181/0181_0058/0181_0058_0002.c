




 
struct struct_ {
  char   m1;
  short  m2;
  long   m3[2];
  int b1 :1;
  int b2 :1;
};

int func2() {
  struct struct_ s1;
  s1.m1 = 10;
  s1.m2 = 500;
  return (int)(s1.m2);
}
