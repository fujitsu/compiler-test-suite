extern int c();

int j = 0;

int bb(int *i);
int bbb(int *i);

int b()
{
  j += 5;
  return bb(&j);
}

int bb(int *i)
{
  *i *= 3;
  return bbb(i);
}

int bbb(int *i)
{
  *i -= 2;
  return c(i);
}
