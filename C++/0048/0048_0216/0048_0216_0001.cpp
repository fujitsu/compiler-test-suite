#include <cstdio>
#include "000.hpp"

B::B()
{
  std::printf("B::B\n");
}

B::~B()
{
  std::printf("B::~B\n");
}

#define DEFINE_SUBN(N, spec)	      \
  void B::sub##N() spec		      \
  {				      \
    std::printf("sub" #N " " #spec "\n"); \
  }

DEFINE_SUBN(1, &)
DEFINE_SUBN(2, const &)
DEFINE_SUBN(3, volatile &)
DEFINE_SUBN(4, const volatile &)
DEFINE_SUBN(5, __restrict__ &)
DEFINE_SUBN(6, __restrict &)

DEFINE_SUBN(1, &&)
DEFINE_SUBN(2, const &&)
DEFINE_SUBN(3, volatile &&)
DEFINE_SUBN(4, const volatile &&)

#undef DEFINE_SUBN
