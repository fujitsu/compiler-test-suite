#include <cstdio>
#include "000.hpp"

#define PUT(Name) \
  std::printf(#Name "\n")

B::B() { PUT(B::B); }

B::~B() { PUT(B::~B); }

void B::sub1() { PUT(B::sub1); }

void B::sub2() const { PUT(B::sub2 const); }

void B::sub3() volatile { PUT(B::sub3 volatile); }

void B::sub4(void) const volatile { PUT(B::sub4 const volatile); }

void B::sub5() __restrict__ { PUT(B::sub5 __restrict__); }

void B::sub6() __restrict { PUT(B::sub6 __restrict); }
