#ifndef _TEMPLATE_HPP
#define _TEMPLATE_HPP

template <int v, typename T = void>
struct operand {
  typedef T type;
};

#define DECL_TEMPLATE_1(N, Op)                                 \
template <int v>                                               \
struct op##N {                                                 \
  static const int value = v;                                  \
                                                               \
  op##N() {}                                                   \
                                                               \
  template <int v2>                                            \
  op##N(const op##N<v2>,                                       \
	typename operand<(op##N<v2>::value Op value)>::type* = 0) {} \
}

#define DECL_TEMPLATE_2(N, Op)                                 \
template <int v>	                                             \
struct op##N {                                                 \
  static const int value = v;                                  \
                                                               \
  op##N() {}                                                   \
                                                               \
  template <int v2>                                            \
  op##N(const op##N<v2>,                                       \
	typename operand<(value Op op##N<v2>::value)>::type* = 0) {} \
}

DECL_TEMPLATE_1( 1, +);
DECL_TEMPLATE_2( 2, +);

DECL_TEMPLATE_1( 3, &);
DECL_TEMPLATE_2( 4, &);

DECL_TEMPLATE_1( 5, |);
DECL_TEMPLATE_2( 6, |);

DECL_TEMPLATE_1( 7, ^);
DECL_TEMPLATE_2( 8, ^);

DECL_TEMPLATE_1( 9, /);
DECL_TEMPLATE_2(10, /);

DECL_TEMPLATE_1(11, ==);
DECL_TEMPLATE_2(12, ==);

DECL_TEMPLATE_1(13, >=);
DECL_TEMPLATE_2(14, >=);

DECL_TEMPLATE_1(15, >);
DECL_TEMPLATE_2(16, >);

DECL_TEMPLATE_1(17, <=);
DECL_TEMPLATE_2(18, <=);

DECL_TEMPLATE_1(19, &&);
DECL_TEMPLATE_1(20, ||);

DECL_TEMPLATE_1(21, <<);
DECL_TEMPLATE_2(22, <<);

DECL_TEMPLATE_1(23, <);
DECL_TEMPLATE_2(24, <);

DECL_TEMPLATE_1(25, %);
DECL_TEMPLATE_2(26, %);

DECL_TEMPLATE_1(27, *);
DECL_TEMPLATE_2(28, *);

DECL_TEMPLATE_1(29, !=);
DECL_TEMPLATE_2(30, !=);

DECL_TEMPLATE_1(31, -);
DECL_TEMPLATE_2(32, -);

#endif
