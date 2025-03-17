#include <stdio.h>
#define OK    printf("ok\n");
#define NG(i) printf("ng %d\n",i);
#define INIT() \
  c = 0x12, _c = 0x2;           \
  uc = 0x12, _uc = 0x2;         \
  sc = 0x12, _sc = 0x2;         \
  s = 0x1234, _s = 0x2;         \
  us = 0x1234, _us = 0x2;       \
  i = 0x12, _i = 0x2;           \
  ui = 0x12, _ui = 0x2;         \
  l = 0x12, _l = 0x2;           \
  ul = 0x1234568, _ul = 0x2;    \
  ll = 0x12, _ll = 0x2;         \
  ull = 0x12, _ull = 0x2;       \
  f = 4.44, _f = 2.0;           \
  d = 8.88, _d = 2.0;           \
  ld = 16.00, _ld = 2.0;

  char c = 0x12, _c = 0x2;
  unsigned char uc = 0x12, _uc = 0x2;
  signed char sc = 0x12, _sc = 0x2;
  short s = 0x1234, _s = 0x2;
  unsigned short us = 0x1234, _us = 0x2;
  int i = 0x12, _i = 0x2;
  unsigned int ui = 0x12, _ui = 0x2;
  long l = 0x12, _l = 0x2;
  unsigned long ul = 0x1234568, _ul = 0x2;
  long long ll = 0x12, _ll = 0x2;
  unsigned long long ull = 0x12, _ull = 0x2;
  float f = 4.44, _f = 2.0;
  double d = 8.88, _d = 2.0;
  long double ld = 16.00, _ld = 2.0;

  float F = f * _f;
  double D = d * _d;
  long double LD = ld * _ld;
int main()
{
  c *= _c;    if (c==0x24) ; else NG(1)   INIT()
  c *= _uc;   if (c==0x24) ; else NG(2)   INIT()
  c *= _sc;   if (c==0x24) ; else NG(3)   INIT()
  c *= _s;    if (c==0x24) ; else NG(4)   INIT()
  c *= _us;   if (c==0x24) ; else NG(5)   INIT()
  c *= _i;    if (c==0x24) ; else NG(6)   INIT()
  c *= _ui;   if (c==0x24) ; else NG(7)   INIT()
  c *= _l;    if (c==0x24) ; else NG(8)   INIT()
  c *= _ul;   if (c==0x24) ; else NG(9)   INIT()
  c *= _ll;   if (c==0x24) ; else NG(10)   INIT()
  c *= _ull;  if (c==0x24) ; else NG(11)   INIT()
  c *= _f;    if (c==0x24) ; else NG(12)   INIT()
  c *= _d;    if (c==0x24) ; else NG(13)   INIT()
  c *= _ld;   if (c==0x24) ; else NG(10)   INIT()

  uc *= _c;    if (uc==0x24) ; else NG(15)   INIT()
  uc *= _uc;   if (uc==0x24) ; else NG(16)   INIT()
  uc *= _sc;   if (uc==0x24) ; else NG(17)   INIT()
  uc *= _s;    if (uc==0x24) ; else NG(18)   INIT()
  uc *= _us;   if (uc==0x24) ; else NG(19)   INIT()
  uc *= _i;    if (uc==0x24) ; else NG(20)   INIT()
  uc *= _ui;   if (uc==0x24) ; else NG(21)   INIT()
  uc *= _l;    if (uc==0x24) ; else NG(22)   INIT()
  uc *= _ul;   if (uc==0x24) ; else NG(23)   INIT()
  uc *= _ll;   if (uc==0x24) ; else NG(24)   INIT()
  uc *= _ull;  if (uc==0x24) ; else NG(25)   INIT()
  uc *= _f;    if (uc==0x24) ; else NG(26)   INIT()
  uc *= _d;    if (uc==0x24) ; else NG(27)   INIT()
  uc *= _ld;   if (uc==0x24) ; else NG(28)   INIT()

  sc *= _c;    if (sc==0x24) ; else NG(29)   INIT()
  sc *= _uc;   if (sc==0x24) ; else NG(30)   INIT()
  sc *= _sc;   if (sc==0x24) ; else NG(31)   INIT()
  sc *= _s;    if (sc==0x24) ; else NG(32)   INIT()
  sc *= _us;   if (sc==0x24) ; else NG(33)   INIT()
  sc *= _i;    if (sc==0x24) ; else NG(34)   INIT()
  sc *= _ui;   if (sc==0x24) ; else NG(35)   INIT()
  sc *= _l;    if (sc==0x24) ; else NG(36)   INIT()
  sc *= _ul;   if (sc==0x24) ; else NG(37)   INIT()
  sc *= _ll;   if (sc==0x24) ; else NG(38)   INIT()
  sc *= _ull;  if (sc==0x24) ; else NG(39)   INIT()
  sc *= _f;    if (sc==0x24) ; else NG(40)   INIT()
  sc *= _d;    if (sc==0x24) ; else NG(41)   INIT()
  sc *= _ld;   if (sc==0x24) ; else NG(42)   INIT()

  s *= _c;    if (s==0x2468) ; else NG(43)   INIT()
  s *= _uc;   if (s==0x2468) ; else NG(44)   INIT()
  s *= _sc;   if (s==0x2468) ; else NG(45)   INIT()
  s *= _s;    if (s==0x2468) ; else NG(46)   INIT()
  s *= _us;   if (s==0x2468) ; else NG(47)   INIT()
  s *= _i;    if (s==0x2468) ; else NG(48)   INIT()
  s *= _ui;   if (s==0x2468) ; else NG(49)   INIT()
  s *= _l;    if (s==0x2468) ; else NG(50)   INIT()
  s *= _ul;   if (s==0x2468) ; else NG(51)   INIT()
  s *= _ll;   if (s==0x2468) ; else NG(52)   INIT()
  s *= _ull;  if (s==0x2468) ; else NG(53)   INIT()
  s *= _f;    if (s==0x2468) ; else NG(54)   INIT()
  s *= _d;    if (s==0x2468) ; else NG(55)   INIT()
  s *= _ld;   if (s==0x2468) ; else NG(56)   INIT()

  us *= _c;    if (us==0x2468) ; else NG(57)   INIT()
  us *= _uc;   if (us==0x2468) ; else NG(58)   INIT()
  us *= _sc;   if (us==0x2468) ; else NG(59)   INIT()
  us *= _s;    if (us==0x2468) ; else NG(60)   INIT()
  us *= _us;   if (us==0x2468) ; else NG(61)   INIT()
  us *= _i;    if (us==0x2468) ; else NG(62)   INIT()
  us *= _ui;   if (us==0x2468) ; else NG(63)   INIT()
  us *= _l;    if (us==0x2468) ; else NG(64)   INIT()
  us *= _ul;   if (us==0x2468) ; else NG(65)   INIT()
  us *= _ll;   if (us==0x2468) ; else NG(66)   INIT()
  us *= _ull;  if (us==0x2468) ; else NG(67)   INIT()
  us *= _f;    if (us==0x2468) ; else NG(68)   INIT()
  us *= _d;    if (us==0x2468) ; else NG(69)   INIT()
  us *= _ld;   if (us==0x2468) ; else NG(70)   INIT()

  i *= _c;    if (i==0x24) ; else NG(71)   INIT()
  i *= _uc;   if (i==0x24) ; else NG(72)   INIT()
  i *= _sc;   if (i==0x24) ; else NG(73)   INIT()
  i *= _s;    if (i==0x24) ; else NG(74)   INIT()
  i *= _us;   if (i==0x24) ; else NG(75)   INIT()
  i *= _i;    if (i==0x24) ; else NG(76)   INIT()
  i *= _ui;   if (i==0x24) ; else NG(77)   INIT()
  i *= _l;    if (i==0x24) ; else NG(78)   INIT()
  i *= _ul;   if (i==0x24) ; else NG(79)   INIT()
  i *= _ll;   if (i==0x24) ; else NG(80)   INIT()
  i *= _ull;  if (i==0x24) ; else NG(81)   INIT()
  i *= _f;    if (i==0x24) ; else NG(82)   INIT()
  i *= _d;    if (i==0x24) ; else NG(83)   INIT()
  i *= _ld;   if (i==0x24) ; else NG(84)   INIT()

  ui *= _c;    if (ui==0x24) ; else NG(85)   INIT()
  ui *= _uc;   if (ui==0x24) ; else NG(86)   INIT()
  ui *= _sc;   if (ui==0x24) ; else NG(87)   INIT()
  ui *= _s;    if (ui==0x24) ; else NG(88)   INIT()
  ui *= _us;   if (ui==0x24) ; else NG(89)   INIT()
  ui *= _i;    if (ui==0x24) ; else NG(90)   INIT()
  ui *= _ui;   if (ui==0x24) ; else NG(91)   INIT()
  ui *= _l;    if (ui==0x24) ; else NG(92)   INIT()
  ui *= _ul;   if (ui==0x24) ; else NG(93)   INIT()
  ui *= _ll;   if (ui==0x24) ; else NG(94)   INIT()
  ui *= _ull;  if (ui==0x24) ; else NG(95)   INIT()
  ui *= _f;    if (ui==0x24) ; else NG(96)   INIT()
  ui *= _d;    if (ui==0x24) ; else NG(97)   INIT()
  ui *= _ld;   if (ui==0x24) ; else NG(98)   INIT()

  l *= _c;    if (l==0x24) ; else NG(99)   INIT()
  l *= _uc;   if (l==0x24) ; else NG(100)   INIT()
  l *= _sc;   if (l==0x24) ; else NG(101)   INIT()
  l *= _s;    if (l==0x24) ; else NG(102)   INIT()
  l *= _us;   if (l==0x24) ; else NG(103)   INIT()
  l *= _i;    if (l==0x24) ; else NG(104)   INIT()
  l *= _ui;   if (l==0x24) ; else NG(105)   INIT()
  l *= _l;    if (l==0x24) ; else NG(106)   INIT()
  l *= _ul;   if (l==0x24) ; else NG(107)   INIT()
  l *= _ll;   if (l==0x24) ; else NG(108)   INIT()
  l *= _ull;  if (l==0x24) ; else NG(109)   INIT()
  l *= _f;    if (l==0x24) ; else NG(110)   INIT()
  l *= _d;    if (l==0x24) ; else NG(111)   INIT()
  l *= _ld;   if (l==0x24) ; else NG(112)   INIT()

  ul *= _c;    if (ul==0x2468AD0) ; else NG(113)   INIT()
  ul *= _uc;   if (ul==0x2468AD0) ; else NG(110)   INIT()
  ul *= _sc;   if (ul==0x2468AD0) ; else NG(115)   INIT()
  ul *= _s;    if (ul==0x2468AD0) ; else NG(116)   INIT()
  ul *= _us;   if (ul==0x2468AD0) ; else NG(117)   INIT()
  ul *= _i;    if (ul==0x2468AD0) ; else NG(118)   INIT()
  ul *= _ui;   if (ul==0x2468AD0) ; else NG(119)   INIT()
  ul *= _l;    if (ul==0x2468AD0) ; else NG(120)   INIT()
  ul *= _ul;   if (ul==0x2468AD0) ; else NG(121)   INIT()
  ul *= _ll;   if (ul==0x2468AD0) ; else NG(122)   INIT()
  ul *= _ull;  if (ul==0x2468AD0) ; else NG(123)   INIT()
  ul *= _f;    if (ul==0x2468AD0) ; else NG(124)   INIT()
  ul *= _d;    if (ul==0x2468AD0) ; else NG(125)   INIT()
  ul *= _ld;   if (ul==0x2468AD0) ; else NG(126)   INIT()

  ll *= _c;    if (ll==0x24) ; else NG(127)   INIT()
  ll *= _uc;   if (ll==0x24) ; else NG(128)   INIT()
  ll *= _sc;   if (ll==0x24) ; else NG(129)   INIT()
  ll *= _s;    if (ll==0x24) ; else NG(130)   INIT()
  ll *= _us;   if (ll==0x24) ; else NG(131)   INIT()
  ll *= _i;    if (ll==0x24) ; else NG(132)   INIT()
  ll *= _ui;   if (ll==0x24) ; else NG(133)   INIT()
  ll *= _l;    if (ll==0x24) ; else NG(134)   INIT()
  ll *= _ul;   if (ll==0x24) ; else NG(135)   INIT()
  ll *= _ll;   if (ll==0x24) ; else NG(136)   INIT()
  ll *= _ull;  if (ll==0x24) ; else NG(137)   INIT()
  ll *= _f;    if (ll==0x24) ; else NG(138)   INIT()
  ll *= _d;    if (ll==0x24) ; else NG(139)   INIT()
  ll *= _ld;   if (ll==0x24) ; else NG(100)   INIT()

  ull *= _c;    if (ull==0x24) ; else NG(101)   INIT()
  ull *= _uc;   if (ull==0x24) ; else NG(102)   INIT()
  ull *= _sc;   if (ull==0x24) ; else NG(103)   INIT()
  ull *= _s;    if (ull==0x24) ; else NG(104)   INIT()
  ull *= _us;   if (ull==0x24) ; else NG(105)   INIT()
  ull *= _i;    if (ull==0x24) ; else NG(106)   INIT()
  ull *= _ui;   if (ull==0x24) ; else NG(107)   INIT()
  ull *= _l;    if (ull==0x24) ; else NG(108)   INIT()
  ull *= _ul;   if (ull==0x24) ; else NG(109)   INIT()
  ull *= _ll;   if (ull==0x24) ; else NG(150)   INIT()
  ull *= _ull;  if (ull==0x24) ; else NG(151)   INIT()
  ull *= _f;    if (ull==0x24) ; else NG(152)   INIT()
  ull *= _d;    if (ull==0x24) ; else NG(153)   INIT()
  ull *= _ld;   if (ull==0x24) ; else NG(154)   INIT()

  f *= _c;    if (f==F) ; else NG(155)   INIT()
  f *= _uc;   if (f==F) ; else NG(156)   INIT()
  f *= _sc;   if (f==F) ; else NG(157)   INIT()
  f *= _s;    if (f==F) ; else NG(158)   INIT()
  f *= _us;   if (f==F) ; else NG(159)   INIT()
  f *= _i;    if (f==F) ; else NG(160)   INIT()
  f *= _ui;   if (f==F) ; else NG(161)   INIT()
  f *= _l;    if (f==F) ; else NG(162)   INIT()
  f *= _ul;   if (f==F) ; else NG(163)   INIT()
  f *= _ll;   if (f==F) ; else NG(164)   INIT()
  f *= _ull;  if (f==F) ; else NG(165)   INIT()
  f *= _f;    if (f==F) ; else NG(166)   INIT()
  f *= _d;    if (f==F) ; else NG(167)   INIT()
  f *= _ld;   if (f==F) ; else NG(168)   INIT()

  d *= _c;    if (d==D) ; else NG(169)   INIT()
  d *= _uc;   if (d==D) ; else NG(170)   INIT()
  d *= _sc;   if (d==D) ; else NG(171)   INIT()
  d *= _s;    if (d==D) ; else NG(172)   INIT()
  d *= _us;   if (d==D) ; else NG(173)   INIT()
  d *= _i;    if (d==D) ; else NG(174)   INIT()
  d *= _ui;   if (d==D) ; else NG(175)   INIT()
  d *= _l;    if (d==D) ; else NG(176)   INIT()
  d *= _ul;   if (d==D) ; else NG(177)   INIT()
  d *= _ll;   if (d==D) ; else NG(178)   INIT()
  d *= _ull;  if (d==D) ; else NG(179)   INIT()
  d *= _f;    if (d==D) ; else NG(180)   INIT()
  d *= _d;    if (d==D) ; else NG(181)   INIT()
  d *= _ld;   if (d==D) ; else NG(182)   INIT()

  ld *= _c;    if (ld==LD) ; else NG(183)   INIT()
  ld *= _uc;   if (ld==LD) ; else NG(184)   INIT()
  ld *= _sc;   if (ld==LD) ; else NG(185)   INIT()
  ld *= _s;    if (ld==LD) ; else NG(186)   INIT()
  ld *= _us;   if (ld==LD) ; else NG(187)   INIT()
  ld *= _i;    if (ld==LD) ; else NG(188)   INIT()
  ld *= _ui;   if (ld==LD) ; else NG(189)   INIT()
  ld *= _l;    if (ld==LD) ; else NG(190)   INIT()
  ld *= _ul;   if (ld==LD) ; else NG(191)   INIT()
  ld *= _ll;   if (ld==LD) ; else NG(192)   INIT()
  ld *= _ull;  if (ld==LD) ; else NG(193)   INIT()
  ld *= _f;    if (ld==LD) ; else NG(194)   INIT()
  ld *= _d;    if (ld==LD) ; else NG(195)   INIT()
  ld *= _ld;   if (ld==LD) ; else NG(196)   INIT()

  OK
}
