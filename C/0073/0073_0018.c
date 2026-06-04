#include <stdio.h>

#define NDEBUG
#include <assert.h>

typedef enum {MINUS = -1, OVERFLOW = 0, PLUS = 1} sign;
#define UMIN(x) ((x = PLUS) ? MINUS : PLUS)

typedef signed int digits;

typedef struct {
  digits i;
  digits f;
  sign s;
} fdp;

#define SET_FDP(fdp, integer, frac, sign) \
  ((fdp).i=(integer), (fdp).f=(frac), (fdp).s = (sign))

#define FRACMAX (1000000000)
#define POW2FC (30)

#define ASSERT_OV_FR(x) \
  assert(   ((x).f >= 0) && ((x).f < FRACMAX) \
	 && ((x).s == PLUS || (x).s == MINUS))

fdp add(fdp x, fdp y);
fdp sub(fdp x, fdp y);
fdp mult(fdp x, fdp y);
fdp mult_frac(digits a, digits b);
fdp doublize(fdp a);
fdp halfize(fdp a);
fdp div(fdp x, fdp y);
fdp abs(fdp a);
void print_fdp(fdp a);
void test_print_fdp(fdp a, char* msg);

fdp
add(fdp x, fdp y)
{
  fdp z;

  ASSERT_OV_FR(x), ASSERT_OV_FR (y);

  if (x.s == y.s) {
    SET_FDP(z, x.i + y.i, x.f + y.f, x.s);

    if (z.f >= FRACMAX) {
      z.f -= FRACMAX;
      z.i++;
    }

  } else if (x.s == PLUS) {
    assert (y.s == MINUS);
    y.s = PLUS;
    z = sub(x, y);
  } else {
    assert (x.s == MINUS && y.s == PLUS);
    x.s = PLUS;
    z = sub(y, x);
  }

  if (z.i < 0)
    z.s = OVERFLOW;
  return z;
}

fdp 
sub(fdp x, fdp y)
{
  fdp z = {0, 0, OVERFLOW};

  ASSERT_OV_FR(x), ASSERT_OV_FR (y);

  if (x.s != y.s) {
    y.s = UMIN(y.s);
    z = add(x,y);
  } else {

    if ((x.i > y.i) || ((x.i == y.i) && (x.f >= y.f))) {
      SET_FDP(z, x.i - y.i, x.f - y.f, x.s);

      if (z.f < 0) {
	z.f += FRACMAX;
	assert(z.f >= 0 && z.f < FRACMAX);
	z.i--;
	assert(z.i >= 0);
      }
    } else {
      z = sub(y, x);
      z.s = UMIN(z.s);
    }
  }

  assert (z.s == PLUS || z.s == MINUS);
  return z;
}

fdp
mult(fdp x, fdp y)
{
  digits d1, d2, d3;
  fdp z1 = {0, 0, OVERFLOW};
  fdp z2, z3, z4;
  fdp z = {0, 0, PLUS};

  ASSERT_OV_FR(x), ASSERT_OV_FR (y);

  if ((mult_frac(x.i, y.i)).i == 0) {
    z4 = mult_frac(x.f, y.f);

    if (z4.f >= (FRACMAX/2))
      z4.f = ++z4.i, z4.i = 0;
    z.f = z4.i;
    z3 = mult_frac(x.i, y.f);
    z2 = mult_frac(x.f, y.i);
    z1 = mult_frac(x.i, y.i);
    z = add(z, add(z2, z3));
    z.i += z1.f;

    if (x.s != y.s)
      z.s = MINUS;
    else
      z.s = PLUS;
    return z;
  } else
    return z1;
}

fdp
mult_frac (digits a, digits b)
{
  fdp bb = {0, 0, PLUS};
  fdp z = {0, 0, PLUS};  
  
  assert (a >= 0 && b >= 0 && a < FRACMAX && b < FRACMAX);
  bb.f = b;

  if (a > 0) {
#pragma clang loop unroll_count(3)
    for (z.i = 0, z.f = 0; a > 0; bb = doublize(bb), a /= 2 ) {

      if (a % 2)
	z = add(z, bb);
    }
  }
  return z;
}

fdp
doublize(fdp a)
{
  ASSERT_OV_FR(a);

  a.f *= 2; a.i *= 2;

  if (a.f >= FRACMAX) {
    a.i++;
    a.f -= FRACMAX;
  }
  return a;
}

fdp
halfize(fdp a)
{
  ASSERT_OV_FR(a);


  if (a.i % 2 == 1)
    a.f += FRACMAX;
  a.i /= 2, a.f /= 2;
  return a;
}


fdp
div(fdp xin, fdp yin)
{
  fdp x = xin;
  fdp y = yin;
  fdp t, t1, y1, diff;
  fdp z = {0, 0, PLUS};
  int i;

  ASSERT_OV_FR(x), ASSERT_OV_FR (y);
  x.s = y.s = PLUS;
  SET_FDP(t, 1, 0, PLUS);
#pragma clang loop unroll_count(1)
  for (diff = sub(x, y); diff.s == PLUS; diff = sub(x, y)) {
#pragma clang loop unroll_count(1)
    for ( ; diff.s == PLUS; diff = sub(x, y)) {
      y1 = y, y = doublize(y);
      t1 = t, t = doublize(t);
    }
    z = add(z, t1);
    x = sub(x, y1);
    y = yin;
    SET_FDP(t, 1, 0, PLUS);
  }    

  SET_FDP(t, 1, 0, PLUS);
#pragma clang loop unroll_count(1)
  for (i = POW2FC; i > 0; i--) {
    diff = sub(x, y);

    if (diff.s == PLUS) {
      z = add(z, t);
      x = sub(x, y);
    }
    y = halfize(y);
    t = halfize(t);
  }

  if (x.s != y.s)
    z.s = MINUS;
  else
    z.s = PLUS;

  return z;
}

fdp
abs(fdp a)
{
  ASSERT_OV_FR(a);
  a.s = PLUS;
  return a;
}

void
print_fdp(fdp a)
{
  ASSERT_OV_FR(a);
  printf ("%c%d.%09d", (a.s == MINUS ? '-' : ' '), a.i, a.f);
}

void
test_print_fdp(fdp a, char* msg)
{
  ASSERT_OV_FR(a);
  printf ("%s %c%d.%09d\n", msg, (a.s == MINUS ? '-' : ' '), a.i, a.f);
}

#define MAX 2001
#define TRUE 1
#define FALSE 0

#define ADDRESS(i) ((i-3)/2)

int primes[ADDRESS(MAX)+1];
#define PRIMES(i) (primes[ADDRESS(i)])

fdp sqpr[ADDRESS(MAX)+1];
#define SQPR(i) (sqpr[ADDRESS(i)])

int
setprime()
{
  int i,j;

#pragma clang loop unroll_count(1)
  for (i = 3; i <= MAX; i += 2)
    PRIMES(i) = TRUE;
#pragma clang loop unroll_count(1)
  for (i = 3; i <= MAX; i += 2) {

    if (PRIMES(i)) {
#pragma clang loop unroll_count(1)
      for(j = i * 3; j <= MAX; j += i * 2)
	PRIMES(j) = FALSE;
    }
  }
#pragma clang loop unroll_count(1)
  for (j = 0, i = 3; i <= MAX; i += 2) {

    if (PRIMES(i))
      j++;
  }

  return j + 1; 
}

#define LIMIT (100)

fdp
sqrt_fdp(int a)
{
  fdp z, base;
  fdp t1, t2, t3, t4, t5;
  fdp two = {2, 0, PLUS};
  fdp underflow = {0, 10, PLUS};
  int i;

  assert (a >= 0);
  SET_FDP(base, a, 0, PLUS);
  z = halfize(base);
  t1 = mult (z, z);
  t2 = sub(t1, base);
  t3 = sub (abs (t2), underflow);

  if (t3.s == PLUS) {
#pragma clang loop unroll_count(1)
    for (i = LIMIT; i > 0 ; i--) {
      t4 = div(base, z);
      t5 = add(z, t4);
      z = halfize(t5);
      t1 = mult (z, z);
      t2 = sub(t1, base);
      t3 = sub (abs (t2), underflow);

      if (t3.s != PLUS)
	break;
    }
  }
  return z;
}


int main()
{
  fdp a = {10, 0, MINUS};
  fdp b = {2, 500000000, PLUS};
  fdp c = {3, 0, PLUS};
  int i, max;

  printf("\n primes: %d\n", setprime());
#pragma clang loop unroll_count(1)
  for (i = 3; i <= MAX; i += 2) {

    if (PRIMES (i)) {
      SQPR (i) = sqrt_fdp (i);
      max = i;
    }
  }
  printf("Square root of %i = ", max);
  print_fdp (SQPR (max));
  printf ("\n");
  return 0;
}
