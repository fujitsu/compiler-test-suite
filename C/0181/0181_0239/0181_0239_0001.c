typedef int T1 __attribute__ ((deprecated));
T1 x = 1;

typedef T1 T2;
T2 y = 2;

typedef T1 T3 __attribute__ ((deprecated));
T3 z __attribute__ ((deprecated)) = 3;

int foo()
{
  return x + y + z;
}
