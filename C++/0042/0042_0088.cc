#include <cstdio>

enum Flags {
  good=0,
  fail=1,
  bad=2,
  eof=4
};

constexpr int operator|(Flags f1, Flags f2)
{
  return Flags(int(f1)|int(f2));
}

const int ext = bad|eof;

int main()
{
  Flags x = good;
  switch (x) {
  case bad:
  case eof:
  case bad|eof:
  default:
    printf("ext: %d\n", ext);
  }
}
