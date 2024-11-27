int func1 (unsigned int arg1)
{
  int i,k;
  k=0,i=0;
  if (i < (unsigned char)arg1) {
    do {
      i++; k++;
    } while (i < (signed char)arg1);
  }
  return k;
}

int func2 (unsigned long long int arg1, unsigned long long int arg2)
{
  int i,k;
  k=0,i=0;
  if (i < (unsigned char)arg1) {
    do {
      i++; k++;
    } while (i < (unsigned char)arg2);
  }
  return k;

}

#include <stdio.h>
#define CHECK_TEST(Xval, Xcor, Xform)       \
  ( printf (#Xval ": %s\n"                  \
            "\t" Xform "\n"                 \
           , (Xval) == (Xcor) ? "OK" : "NG" \
           , (Xval)                         \
  ) )
#define CHECK_TESTd(Xval, Xcor)  CHECK_TEST (Xval, Xcor, "%d")

static void main1 (void)
{
  int res;
  res = func1 (-128); CHECK_TESTd(res, 1);
}
static void main2 (void)
{
  int res;
  res = func2 (1,2); CHECK_TESTd(res, 2);
  res = func2 (2,1); CHECK_TESTd(res, 1);
}

#define _PRE_(XXX) { puts(#XXX); XXX; }
int main(void)
{
  _PRE_(main1 ());
  _PRE_(main2 ());
  return 0;
}
