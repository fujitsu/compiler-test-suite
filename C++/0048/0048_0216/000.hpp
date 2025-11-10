#ifndef _B_HPP
#define _B_HPP

class B
{
public:
  B();
  ~B();

#define DECL_SUBN(N, spec) void sub##N(void) spec
  DECL_SUBN(1, &);
  DECL_SUBN(2, const &);
  DECL_SUBN(3, volatile &);
  DECL_SUBN(4, const volatile &);
  DECL_SUBN(5, __restrict__ &);
  DECL_SUBN(6, __restrict &);

  DECL_SUBN(1, &&);
  DECL_SUBN(2, const &&);
  DECL_SUBN(3, volatile &&);
  DECL_SUBN(4, const volatile &&);
#undef DECL_SUBN
};

#endif
