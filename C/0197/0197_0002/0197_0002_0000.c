union aaa {
  int a;
  int b;
  int c;
};
int idx;
union aaa sub2(int i) {
  union aaa b;
  b.a = 1;
  b.b = 2;
  b.c = 3;
  return b;
}
