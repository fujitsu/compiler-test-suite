#include <stdio.h>
#define OK    printf("ok\n");
#define NG(i) printf("ng %d\n",i);
#define INIT() \
  c = 0x12, _c = 0x2;           \
  uc = 0x12, _uc = 0x2;         \
  sc = 0x12, _sc = 0x2;         \
  s = 0x1234, _s = 0x2;         \
  us = 0x1234, _us = 0x2;       \
  i = 0x12345678, _i = 0x2;     \
  ui = 0x12345678, _ui = 0x2;   \
  l = 0x12345678, _l = 0x2;     \
  ul = 0x12345678, _ul = 0x2;   \
  ll = 0x12345678, _ll = 0x2;   \
  ull = 0x12345678, _ull = 0x2;

  char c = 0x12, _c = 0x2;
  unsigned char uc = 0x12, _uc = 0x2;
  signed char sc = 0x12, _sc = 0x2;
  short s = 0x1234, _s = 0x2;
  unsigned short us = 0x1234, _us = 0x2;
  int i = 0x12345678, _i = 0x2;
  unsigned int ui = 0x12345678, _ui = 0x2;
  long l = 0x12345678, _l = 0x2;
  unsigned long ul = 0x12345678, _ul = 0x2;
  long long ll = 0x12345678, _ll = 0x2;
  unsigned long long ull = 0x12345678, _ull = 0x2;
int main()
{
  c >>= _c;    if (c==0x4) ; else NG(1)   INIT()
  c >>= _uc;   if (c==0x4) ; else NG(2)   INIT()
  c >>= _sc;   if (c==0x4) ; else NG(3)   INIT()
  c >>= _s;    if (c==0x4) ; else NG(4)   INIT()
  c >>= _us;   if (c==0x4) ; else NG(5)   INIT()
  c >>= _i;    if (c==0x4) ; else NG(6)   INIT()
  c >>= _ui;   if (c==0x4) ; else NG(7)   INIT()
  c >>= _l;    if (c==0x4) ; else NG(8)   INIT()
  c >>= _ul;   if (c==0x4) ; else NG(9)   INIT()
  c >>= _ll;   if (c==0x4) ; else NG(10)   INIT()
  c >>= _ull;  if (c==0x4) ; else NG(11)   INIT()

  uc >>= _c;     if (uc==0x4) ; else NG(15)   INIT()
  uc >>= _uc;    if (uc==0x4) ; else NG(16)   INIT()
  uc >>= _sc;    if (uc==0x4) ; else NG(17)   INIT()
  uc >>= _s;     if (uc==0x4) ; else NG(18)   INIT()
  uc >>= _us;    if (uc==0x4) ; else NG(19)   INIT()
  uc >>= _i;     if (uc==0x4) ; else NG(20)   INIT()
  uc >>= _ui;    if (uc==0x4) ; else NG(21)   INIT()
  uc >>= _l;     if (uc==0x4) ; else NG(22)   INIT()
  uc >>= _ul;    if (uc==0x4) ; else NG(23)   INIT()
  uc >>= _ll;    if (uc==0x4) ; else NG(24)   INIT()
  uc >>= _ull;   if (uc==0x4) ; else NG(25)   INIT()

  sc >>= _c;     if (sc==0x4) ; else NG(29)   INIT()
  sc >>= _uc;    if (sc==0x4) ; else NG(30)   INIT()
  sc >>= _sc;    if (sc==0x4) ; else NG(31)   INIT()
  sc >>= _s;     if (sc==0x4) ; else NG(32)   INIT()
  sc >>= _us;    if (sc==0x4) ; else NG(33)   INIT()
  sc >>= _i;     if (sc==0x4) ; else NG(34)   INIT()
  sc >>= _ui;    if (sc==0x4) ; else NG(35)   INIT()
  sc >>= _l;     if (sc==0x4) ; else NG(36)   INIT()
  sc >>= _ul;    if (sc==0x4) ; else NG(37)   INIT()
  sc >>= _ll;    if (sc==0x4) ; else NG(38)   INIT()
  sc >>= _ull;   if (sc==0x4) ; else NG(39)   INIT()

  s >>= _c;    if (s==0x48d) ; else NG(43)   INIT()
  s >>= _uc;   if (s==0x48d) ; else NG(44)   INIT()
  s >>= _sc;   if (s==0x48d) ; else NG(45)   INIT()
  s >>= _s;    if (s==0x48d) ; else NG(46)   INIT()
  s >>= _us;   if (s==0x48d) ; else NG(47)   INIT()
  s >>= _i;    if (s==0x48d) ; else NG(48)   INIT()
  s >>= _ui;   if (s==0x48d) ; else NG(49)   INIT()
  s >>= _l;    if (s==0x48d) ; else NG(50)   INIT()
  s >>= _ul;   if (s==0x48d) ; else NG(51)   INIT()
  s >>= _ll;   if (s==0x48d) ; else NG(52)   INIT()
  s >>= _ull;  if (s==0x48d) ; else NG(53)   INIT()

  us >>= _c;     if (us==0x48d) ; else NG(57)   INIT()
  us >>= _uc;    if (us==0x48d) ; else NG(58)   INIT()
  us >>= _sc;    if (us==0x48d) ; else NG(59)   INIT()
  us >>= _s;     if (us==0x48d) ; else NG(60)   INIT()
  us >>= _us;    if (us==0x48d) ; else NG(61)   INIT()
  us >>= _i;     if (us==0x48d) ; else NG(62)   INIT()
  us >>= _ui;    if (us==0x48d) ; else NG(63)   INIT()
  us >>= _l;     if (us==0x48d) ; else NG(64)   INIT()
  us >>= _ul;    if (us==0x48d) ; else NG(65)   INIT()
  us >>= _ll;    if (us==0x48d) ; else NG(66)   INIT()
  us >>= _ull;   if (us==0x48d) ; else NG(67)   INIT()

  i >>= _c;    if (i==0x48d159e) ; else NG(71)   INIT()
  i >>= _uc;   if (i==0x48d159e) ; else NG(72)   INIT()
  i >>= _sc;   if (i==0x48d159e) ; else NG(73)   INIT()
  i >>= _s;    if (i==0x48d159e) ; else NG(74)   INIT()
  i >>= _us;   if (i==0x48d159e) ; else NG(75)   INIT()
  i >>= _i;    if (i==0x48d159e) ; else NG(76)   INIT()
  i >>= _ui;   if (i==0x48d159e) ; else NG(77)   INIT()
  i >>= _l;    if (i==0x48d159e) ; else NG(78)   INIT()
  i >>= _ul;   if (i==0x48d159e) ; else NG(79)   INIT()
  i >>= _ll;   if (i==0x48d159e) ; else NG(80)   INIT()
  i >>= _ull;  if (i==0x48d159e) ; else NG(81)   INIT()

  ui >>= _c;    if (ui==0x48d159e) ; else NG(85)   INIT()
  ui >>= _uc;   if (ui==0x48d159e) ; else NG(86)   INIT()
  ui >>= _sc;   if (ui==0x48d159e) ; else NG(87)   INIT()
  ui >>= _s;    if (ui==0x48d159e) ; else NG(88)   INIT()
  ui >>= _us;   if (ui==0x48d159e) ; else NG(89)   INIT()
  ui >>= _i;    if (ui==0x48d159e) ; else NG(90)   INIT()
  ui >>= _ui;   if (ui==0x48d159e) ; else NG(91)   INIT()
  ui >>= _l;    if (ui==0x48d159e) ; else NG(92)   INIT()
  ui >>= _ul;   if (ui==0x48d159e) ; else NG(93)   INIT()
  ui >>= _ll;   if (ui==0x48d159e) ; else NG(94)   INIT()
  ui >>= _ull;  if (ui==0x48d159e) ; else NG(95)   INIT()

  l >>= _c;    if (l==0x48d159e) ; else NG(99)   INIT()
  l >>= _uc;   if (l==0x48d159e) ; else NG(100)   INIT()
  l >>= _sc;   if (l==0x48d159e) ; else NG(101)   INIT()
  l >>= _s;    if (l==0x48d159e) ; else NG(102)   INIT()
  l >>= _us;   if (l==0x48d159e) ; else NG(103)   INIT()
  l >>= _i;    if (l==0x48d159e) ; else NG(104)   INIT()
  l >>= _ui;   if (l==0x48d159e) ; else NG(105)   INIT()
  l >>= _l;    if (l==0x48d159e) ; else NG(106)   INIT()
  l >>= _ul;   if (l==0x48d159e) ; else NG(107)   INIT()
  l >>= _ll;   if (l==0x48d159e) ; else NG(108)   INIT()
  l >>= _ull;  if (l==0x48d159e) ; else NG(109)   INIT()

  ul >>= _c;     if (ul==0x48d159e) ; else NG(113)   INIT()
  ul >>= _uc;    if (ul==0x48d159e) ; else NG(114)   INIT()
  ul >>= _sc;    if (ul==0x48d159e) ; else NG(115)   INIT()
  ul >>= _s;     if (ul==0x48d159e) ; else NG(116)   INIT()
  ul >>= _us;    if (ul==0x48d159e) ; else NG(117)   INIT()
  ul >>= _i;     if (ul==0x48d159e) ; else NG(118)   INIT()
  ul >>= _ui;    if (ul==0x48d159e) ; else NG(119)   INIT()
  ul >>= _l;     if (ul==0x48d159e) ; else NG(120)   INIT()
  ul >>= _ul;    if (ul==0x48d159e) ; else NG(121)   INIT()
  ul >>= _ll;    if (ul==0x48d159e) ; else NG(122)   INIT()
  ul >>= _ull;   if (ul==0x48d159e) ; else NG(123)   INIT()

  ll >>= _c;     if (ll==0x48d159e) ; else NG(127)   INIT()
  ll >>= _uc;    if (ll==0x48d159e) ; else NG(128)   INIT()
  ll >>= _sc;    if (ll==0x48d159e) ; else NG(129)   INIT()
  ll >>= _s;     if (ll==0x48d159e) ; else NG(130)   INIT()
  ll >>= _us;    if (ll==0x48d159e) ; else NG(131)   INIT()
  ll >>= _i;     if (ll==0x48d159e) ; else NG(132)   INIT()
  ll >>= _ui;    if (ll==0x48d159e) ; else NG(133)   INIT()
  ll >>= _l;     if (ll==0x48d159e) ; else NG(134)   INIT()
  ll >>= _ul;    if (ll==0x48d159e) ; else NG(135)   INIT()
  ll >>= _ll;    if (ll==0x48d159e) ; else NG(136)   INIT()
  ll >>= _ull;   if (ll==0x48d159e) ; else NG(137)   INIT()

  ull >>= _c;    if (ull==0x48d159e) ; else NG(141)   INIT()
  ull >>= _uc;   if (ull==0x48d159e) ; else NG(142)   INIT()
  ull >>= _sc;   if (ull==0x48d159e) ; else NG(143)   INIT()
  ull >>= _s;    if (ull==0x48d159e) ; else NG(144)   INIT()
  ull >>= _us;   if (ull==0x48d159e) ; else NG(145)   INIT()
  ull >>= _i;    if (ull==0x48d159e) ; else NG(146)   INIT()
  ull >>= _ui;   if (ull==0x48d159e) ; else NG(147)   INIT()
  ull >>= _l;    if (ull==0x48d159e) ; else NG(148)   INIT()
  ull >>= _ul;   if (ull==0x48d159e) ; else NG(149)   INIT()
  ull >>= _ll;   if (ull==0x48d159e) ; else NG(150)   INIT()
  ull >>= _ull;  if (ull==0x48d159e) ; else NG(151)   INIT()

  OK
}
