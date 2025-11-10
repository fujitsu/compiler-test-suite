extern int foo(int);

static int counter = 0;

static void sub3(int x)
{
  ++counter;
  foo(x - 1);
}

static void sub2(int x)
{
  ++counter;
  sub3(x - 1);
}

static void sub1(int x)
{
  ++counter;
  sub2(x - 1);
}

int foo(int x)
{
  if (x <= 0) { return x; }
  sub1(x - 1);
  return counter;
}
