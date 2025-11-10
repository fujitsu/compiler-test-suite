extern int printf(const char *str, ...);
void test_3(double X) {
  printf("%f %f\n", -0.0 - X, -X);
}

#ifdef ORIGINAL
int main() {
  test(+0.0);
  test(-0.0);
  printf("negzero = %f  poszero = %f\n", -0.0, +0.0);
  return 0;
}
#else
void sub3()
{
  test_3(+0.0);
  test_3(-0.0);
  printf("negzero = %f  poszero = %f\n", -0.0, +0.0);
}
#endif
