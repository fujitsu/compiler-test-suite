#include <stdio.h>
#include <complex.h>

void test_f()
{
  float _Complex c;

  c = 1.0F;

  ++c;
  --c;
  c++;
  c--;

  c += 1.0F;
  c -= 1.0F;

  c = c + 1.0F;
  c = c - 1.0F;

  if (c != 1.0F) {
    printf("float _Complex NG\n");
  }
}

void test_d()
{
  double _Complex c;

  c = 1.0;

  ++c;
  --c;
  c++;
  c--;

  c += 1.0;
  c -= 1.0;

  c = c + 1.0;
  c = c - 1.0;

  if (c != 1.0) {
    printf("double _Complex NG\n");
  }
}

void test_l()
{
  long double _Complex c;

  c = 1.0L;

  ++c;
  --c;
  c++;
  c--;

  c += 1.0L;
  c -= 1.0L;

  c = c + 1.0L;
  c = c - 1.0L;

  if (c != 1.0L) {
    printf("long double _Complex NG\n");
  }
}

int main()
{
  printf("test start\n");

  test_f();
  test_d();
  test_l();

  printf("test end\n");
  return 0;
}
