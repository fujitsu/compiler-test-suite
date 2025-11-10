constexpr int func(int a, int b)
{
  return (a > b) ? a + b : a - b;
}

int vrfunc(int a) {
  return (a > 0) ? a : - a;
}

int main()
{
  int va = 1, vb = vrfunc(va);
  int result1 = func(1, 2);
  int result2 = func(va, vb);
}
