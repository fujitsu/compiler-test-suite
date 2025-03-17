#include <cstdarg>

typedef void F();

void Test_FunctionType(F f, ...)
{
  int i;
  double val;
  va_list vl;
  va_start(vl, f);
  for (i = 0; i < 3; i++)
    val = va_arg(vl, double);
  va_end(vl);
}

void Test_ArrayType(int a[], ...)
{
  int i;
  double val;
  va_list vl;
  va_start(vl, a);
  for (i = 0; i < 3; i++)
    val = va_arg(vl, double);
  va_end(vl);
}

void Funtion() {}
int main()
{
  Test_FunctionType(Funtion, 3.14159, 2.71828, 1.41421);
  int arr1[3] = {0};
  Test_ArrayType(arr1, 3.14159, 2.71828, 1.41421);
  return 0;
}
