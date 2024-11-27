#include <stdio.h>
struct aaaa { double a; double b; };
struct bbbb { float a; float b; };

struct aaaa sub1 (float);
struct bbbb sub2 (float);

struct aaaa sub1 (float k) { struct aaaa p; return p; }
struct bbbb sub2 (float k) { struct bbbb c; return c; }
int main()
{
  struct aaaa b;
  float i;
  struct bbbb c;
  b = sub1 (i);
  c = sub2 (i);
  printf("ok\n");
}
