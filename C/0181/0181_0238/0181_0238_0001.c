static int counter = 0;

static void inc()
{
  ++counter;
}

int foo(int x)
{
  switch (x) {
  case 1:
    inc();
    __attribute__ ((fallthrough));
  case 2:
    inc();
    break;
  }

  return counter;
}
