#include <stdio.h>
int sub4 ();
int sub3 ();
int sub2 ();
int sub1 ();
int init ();

int a, b;
int main()
{
  printf("**********  TEST START **********\n");
  init ();
  sub1 ();
  sub2 ();
  sub3 ();
  sub4 ();
  printf("**********  TEST END   **********\n");
}

int sub1 ()
{
  int i;
  if (a == b)
    if (a != b)
      printf ("ng1\n");
  if (a == b)
    if (b != a)
      printf ("ng2\n");

  if (a != b)
    if (a == b)
      printf ("ng3\n");
  if (a != b)
    if (b == a)
      printf ("ng4\n");

  if (a > b)
    if (a < b)
      printf ("ng5\n");
  if (a > b)
    if (b > a)
      printf ("ng6\n");

  if (a < b)
    if (a > b)
      printf ("ng7\n");
  if (a < b)
    if (b < a)
      printf ("ng8\n");

  if (a >= b)
    if (a <= b)
      printf ("ng9\n");
  if (a >= b)
    if (b >= a)
      printf ("ng10\n");

  if (a <= b)
    if (a >= b)
      printf ("ng11\n");
  if (a <= b)
    if (b <= a)
      printf ("ng12\n");

  if (b == a)
    if (b != a)
      printf ("ng13\n");
  if (b == a)
    if (a != b)
      printf ("ng14\n");

  if (b != a)
    if (b == a)
      printf ("ng15\n");
  if (b != a)
    if (a == b)
      printf ("ng16\n");

  if (b > a)
    if (b < a)
      printf ("ng17\n");
  if (b > a)
    if (a > b)
      printf ("ng18\n");

  if (b < a)
    if (b > a)
      printf ("ng19\n");
  if (b < a)
    if (a < b)
      printf ("ng20\n");

  if (b >= a)
    if (b <= a)
      printf ("ng21\n");
  if (b >= a)
    if (a >= b)
      printf ("ng22\n");

  if (b <= a)
    if (b >= a)
      printf ("ng23\n");
  if (b <= a)
    if (a <= b)
      printf ("ng24\n");

  for (i = 10; i < 5; i++)
    printf ("ng\n");

  printf ("ok1\n");
}

int init ()
{
  a = 8;
  b = ~a;
}

int sub2 ()
{
  int c;
  int i;

  if (a == b)
    if (a != b)
      if (c > 10)
	printf ("ng1\n");
  if (a == b)
    if (b != a)
      if (c > 10)
	printf ("ng2\n");

  if (a != b)
    if (a == b)
      if (c > 10)
	printf ("ng3\n");
  if (a != b)
    if (b == a)
      if (c > 10)
	printf ("ng4\n");

  if (a > b)
    if (a < b)
      if (c > 10)
	printf ("ng5\n");
  if (a > b)
    if (b > a)
      if (c > 10)
	printf ("ng6\n");

  if (a < b)
    if (a > b)
      if (c > 10)
	printf ("ng7\n");
  if (a < b)
    if (b < a)
      if (c > 10)
	printf ("ng8\n");

  if (a >= b)
    if (a <= b)
      if (c > 10)
	printf ("ng9\n");
  if (a >= b)
    if (b >= a)
      if (c > 10)
	printf ("ng10\n");

  if (a <= b)
    if (a >= b)
      if (c > 10)
	printf ("ng11\n");
  if (a <= b)
    if (b <= a)
      if (c > 10)
	printf ("ng12\n");

  if (b == a)
    if (b != a)
      if (c > 10)
	printf ("ng13\n");
  if (b == a)
    if (a != b)
      if (c > 10)
	printf ("ng14\n");

  if (b != a)
    if (b == a)
      if (c > 10)
	printf ("ng15\n");
  if (b != a)
    if (a == b)
      if (c > 10)
	printf ("ng16\n");

  if (b > a)
    if (b < a)
      if (c > 10)
	printf ("ng17\n");
  if (b > a)
    if (a > b)
      if (c > 10)
	printf ("ng18\n");

  if (b < a)
    if (b > a)
      if (c > 10)
	printf ("ng19\n");
  if (b < a)
    if (a < b)
      if (c > 10)
	printf ("ng20\n");

  if (b >= a)
    if (b <= a)
      if (c > 10)
	printf ("ng21\n");
  if (b >= a)
    if (a >= b)
      if (c > 10)
	printf ("ng22\n");

  if (b <= a)
    if (b >= a)
      if (c > 10)
	printf ("ng23\n");
  if (b <= a)
    if (a <= b)
      if (c > 10)
	printf ("ng24\n");

  for (i = 10; i < 5; i++)
    printf ("ng\n");

  printf ("ok2\n");
}

int sub3 ()
{
  int c;
  int i;

  if (a == b)
    if (a != b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng1\n");
  if (a == b)
    if (b != a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng2\n");

  if (a != b)
    if (a == b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng3\n");
  if (a != b)
    if (b == a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng4\n");

  if (a > b)
    if (a < b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng5\n");
  if (a > b)
    if (b > a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng6\n");

  if (a < b)
    if (a > b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng7\n");
  if (a < b)
    if (b < a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng8\n");

  if (a >= b)
    if (a <= b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng9\n");
  if (a >= b)
    if (b >= a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng10\n");

  if (a <= b)
    if (a >= b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng11\n");
  if (a <= b)
    if (b <= a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng12\n");

  if (b == a)
    if (b != a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng13\n");
  if (b == a)
    if (a != b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng14\n");

  if (b != a)
    if (b == a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng15\n");
  if (b != a)
    if (a == b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng16\n");

  if (b > a)
    if (b < a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng17\n");
  if (b > a)
    if (a > b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng18\n");

  if (b < a)
    if (b > a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng19\n");
  if (b < a)
    if (a < b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng20\n");

  if (b >= a)
    if (b <= a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng21\n");
  if (b >= a)
    if (a >= b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng22\n");

  if (b <= a)
    if (b >= a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng23\n");
  if (b <= a)
    if (a <= b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  printf ("ng24\n");

  for (i = 10; i < 5; i++)
    printf ("ng\n");

  printf ("ok3\n");
}

int sub4 ()
{
  int c;
  int i;

  if (a == b)
    if (a != b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (a == b)
	    if (a != b)
	      if (c > 10)
		printf ("ng1\n");
  if (a == b)
    if (b != a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (a == b)
	    if (b != a)
	      if (c > 10)
		printf ("ng2\n");
  if (a != b)
    if (a == b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (a != b)
	    if (a == b)
	      if (c > 10)
		printf ("ng3\n");
  if (a != b)
    if (b == a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (a != b)
	    if (b == a)
	      if (c > 10)
		printf ("ng4\n");
  if (a > b)
    if (a < b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (a > b)
	    if (a < b)
	      if (c > 10)
		printf ("ng5\n");
  if (a > b)
    if (b > a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (a > b)
	    if (b > a)
	      if (c > 10)
		printf ("ng6\n");
  if (a < b)
    if (a > b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (a < b)
	    if (a > b)
	      if (c > 10)
		printf ("ng7\n");
  if (a < b)
    if (b < a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (a < b)
	    if (b < a)
	      if (c > 10)
		printf ("ng8\n");
  if (a >= b)
    if (a <= b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (a >= b)
	    if (a <= b)
	      if (c > 10)
		printf ("ng9\n");
  if (a >= b)
    if (b >= a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (a >= b)
	    if (b >= a)
	      if (c > 10)
		printf ("ng10\n");
  if (a <= b)
    if (a >= b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (a <= b)
	    if (a >= b)
	      if (c > 10)
		printf ("ng11\n");
  if (a <= b)
    if (b <= a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (a <= b)
	    if (b <= a)
	      if (c > 10)
		printf ("ng12\n");
  if (b == a)
    if (b != a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (b == a)
	    if (b != a)
	      if (c > 10)
		printf ("ng13\n");
  if (b == a)
    if (a != b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (b == a)
	    if (a != b)
	      if (c > 10)
		printf ("ng14\n");
  if (b != a)
    if (b == a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (b != a)
	    if (b == a)
	      if (c > 10)
		printf ("ng15\n");
  if (b != a)
    if (a == b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (b != a)
	    if (a == b)
	      if (c > 10)
		printf ("ng16\n");
  if (b > a)
    if (b < a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (b > a)
	    if (b < a)
	      if (c > 10)
		printf ("ng17\n");
  if (b > a)
    if (a > b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (b > a)
	    if (a > b)
	      if (c > 10)
		printf ("ng18\n");
  if (b < a)
    if (b > a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (b < a)
	    if (b > a)
	      if (c > 10)
		printf ("ng19\n");
  if (b < a)
    if (a < b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (b < a)
	    if (a < b)
	      if (c > 10)
		printf ("ng20\n");
  if (b >= a)
    if (b <= a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (b >= a)
	    if (b <= a)
	      if (c > 10)
		printf ("ng21\n");
  if (b >= a)
    if (a >= b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (b >= a)
	    if (a >= b)
	      if (c > 10)
		printf ("ng22\n");
  if (b <= a)
    if (b >= a)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (b <= a)
	    if (b >= a)
	      if (c > 10)
		printf ("ng23\n");
  if (b <= a)
    if (a <= b)
      if (c > 10)
	for (i = 10; i < 5; i++)
	  if (b <= a)
	    if (a <= b)
	      if (c > 10)
		printf ("ng24\n");

  for (i = 10; i < 5; i++)
    printf ("ng\n");

  printf ("ok4\n");
}
