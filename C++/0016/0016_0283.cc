char			c0[1];
signed char		sc0[1][2];
unsigned char		uc0[1][2][3];
short			s0[1][2][3][4];
signed short		ss0[1][2][3][4][5];
unsigned short		us0[1];
int			i0[1][2];
signed int		si0[1][2][3];
unsigned int		ui0[1][2][3][4];
long			l0[1][2][3][4][5];
signed long		sl0[1];
unsigned long		ul0[1][2];
float			f0[1][2][3];
double			d0[1][2][3][4];
long double		ld0[1][2][3][4][5];
bool			b0[1];
wchar_t			w0[1][2];
long long		ll0[1][2][3];
signed long long	sll0[1][2][3][4];
unsigned long long	ull0[1][2][3][4][5];

struct SG {
  char			c1[1];
  signed char		sc1[1][2];
  unsigned char		uc1[1][2][3];
  short			s1[1][2][3][4];
  signed short		ss1[1][2][3][4][5];
  unsigned short	us1[1];
  int			i1[1][2];
  signed int		si1[1][2][3];
  unsigned int		ui1[1][2][3][4];
  long			l1[1][2][3][4][5];
  signed long		sl1[1];
  unsigned long		ul1[1][2];
  float			f1[1][2][3];
  double		d1[1][2][3][4];
  long double		ld1[1][2][3][4][5];
  bool			b1[1];
  wchar_t		w1[1][2];
  long long		ll1[1][2][3];
  signed long long	sll1[1][2][3][4];
  unsigned long long	ull1[1][2][3][4][5];
}sgobj;

class CG : public SG {
 public:
  char			c2[1];
  signed char		sc2[1][2];
  unsigned char		uc2[1][2][3];
  short			s2[1][2][3][4];
  signed short		ss2[1][2][3][4][5];
  unsigned short	us2[1];
  int			i2[1][2];
  signed int		si2[1][2][3];
  unsigned int		ui2[1][2][3][4];
  long			l2[1][2][3][4][5];
  signed long		sl2[1];
  unsigned long		ul2[1][2];
  float			f2[1][2][3];
  double		d2[1][2][3][4];
  long double		ld2[1][2][3][4][5];
  bool			b2[1];
  wchar_t		w2[1][2];
  long long		ll2[1][2][3];
  signed long long	sll2[1][2][3][4];
  unsigned long long	ull2[1][2][3][4][5];
  struct CSG {
    char		c3[1];
    signed char		sc3[1][2];
    unsigned char	uc3[1][2][3];
    short		s3[1][2][3][4];
    signed short	ss3[1][2][3][4][5];
    unsigned short	us3[1];
    int			i3[1][2];
    signed int		si3[1][2][3];
    unsigned int	ui3[1][2][3][4];
    long		l3[1][2][3][4][5];
    signed long		sl3[1];
    unsigned long	ul3[1][2];
    float		f3[1][2][3];
    double		d3[1][2][3][4];
    long double		ld3[1][2][3][4][5];
    bool		b3[1];
    wchar_t		w3[1][2];
    long long		ll3[1][2][3];
    signed long long	sll3[1][2][3][4];
    unsigned long long	ull3[1][2][3][4][5];
  }csgobj;
}cgobj;

union UG {
  char			c4[1];
  signed char		sc4[1][2];
  unsigned char		uc4[1][2][3];
  short			s4[1][2][3][4];
  signed short		ss4[1][2][3][4][5];
  unsigned short	us4[1];
  int			i4[1][2];
  signed int		si4[1][2][3];
  unsigned int		ui4[1][2][3][4];
  long			l4[1][2][3][4][5];
  signed long		sl4[1];
  unsigned long		ul4[1][2];
  float			f4[1][2][3];
  double		d4[1][2][3][4];
  long double		ld4[1][2][3][4][5];
  bool			b4[1];
  wchar_t		w4[1][2];
  long long		ll4[1][2][3];
  signed long long	sll4[1][2][3][4];
  unsigned long long	ull4[1][2][3][4][5];
}ugobj;

namespace NG {
  char			c5[1];
  signed char		sc5[1][2];
  unsigned char		uc5[1][2][3];
  short			s5[1][2][3][4];
  signed short		ss5[1][2][3][4][5];
  unsigned short	us5[1];
  int			i5[1][2];
  signed int		si5[1][2][3];
  unsigned int		ui5[1][2][3][4];
  long			l5[1][2][3][4][5];
  signed long		sl5[1];
  unsigned long		ul5[1][2];
  float			f5[1][2][3];
  double		d5[1][2][3][4];
  long double		ld5[1][2][3][4][5];
  bool			b5[1];
  wchar_t		w5[1][2];
  long long		ll5[1][2][3];
  signed long long	sll5[1][2][3][4];
  unsigned long long	ull5[1][2][3][4][5];
}
using namespace NG;

#include <stdio.h>
int main()
{
  char			c6[1];
  signed char		sc6[1][2];
  unsigned char		uc6[1][2][3];
  short			s6[1][2][3][4];
  signed short		ss6[1][2][3][4][5];
  unsigned short	us6[1];
  int			i6[1][2];
  signed int		si6[1][2][3];
  unsigned int		ui6[1][2][3][4];
  long			l6[1][2][3][4][5];
  signed long		sl6[1];
  unsigned long		ul6[1][2];
  float			f6[1][2][3];
  double		d6[1][2][3][4];
  long double		ld6[1][2][3][4][5];
  bool			b6[1];
  wchar_t		w6[1][2];
  long long		ll6[1][2][3];
  signed long long	sll6[1][2][3][4];
  unsigned long long	ull6[1][2][3][4][5];

  struct SL {
    char		c7[1];
    signed char		sc7[1][2];
    unsigned char	uc7[1][2][3];
    short		s7[1][2][3][4];
    signed short	ss7[1][2][3][4][5];
    unsigned short	us7[1];
    int			i7[1][2];
    signed int		si7[1][2][3];
    unsigned int	ui7[1][2][3][4];
    long		l7[1][2][3][4][5];
    signed long		sl7[1];
    unsigned long	ul7[1][2];
    float		f7[1][2][3];
    double		d7[1][2][3][4];
    long double		ld7[1][2][3][4][5];
    bool		b7[1];
    wchar_t		w7[1][2];
    long long		ll7[1][2][3];
    signed long long	sll7[1][2][3][4];
    unsigned long long	ull7[1][2][3][4][5];
  }slobj;

  class CL : public SL {
   public:
    char		c8[1];
    signed char		sc8[1][2];
    unsigned char	uc8[1][2][3];
    short		s8[1][2][3][4];
    signed short	ss8[1][2][3][4][5];
    unsigned short	us8[1];
    int			i8[1][2];
    signed int		si8[1][2][3];
    unsigned int	ui8[1][2][3][4];
    long		l8[1][2][3][4][5];
    signed long		sl8[1];
    unsigned long	ul8[1][2];
    float		f8[1][2][3];
    double		d8[1][2][3][4];
    long double		ld8[1][2][3][4][5];
    bool		b8[1];
    wchar_t		w8[1][2];
    long long		ll8[1][2][3];
    signed long long	sll8[1][2][3][4];
    unsigned long long	ull8[1][2][3][4][5];
    struct CSL {
      char		c9[1];
      signed char	sc9[1][2];
      unsigned char	uc9[1][2][3];
      short		s9[1][2][3][4];
      signed short	ss9[1][2][3][4][5];
      unsigned short	us9[1];
      int		i9[1][2];
      signed int	si9[1][2][3];
      unsigned int	ui9[1][2][3][4];
      long		l9[1][2][3][4][5];
      signed long	sl9[1];
      unsigned long	ul9[1][2];
      float		f9[1][2][3];
      double		d9[1][2][3][4];
      long double	ld9[1][2][3][4][5];
      bool		b9[1];
      wchar_t		w9[1][2];
      long long		ll9[1][2][3];
      signed long long	sll9[1][2][3][4];
      unsigned long long	ull9[1][2][3][4][5];
    }cslobj;
  }clobj;
  
  union UL {
    char		c10[1];
    signed char		sc10[1][2];
    unsigned char	uc10[1][2][3];
    short		s10[1][2][3][4];
    signed short	ss10[1][2][3][4][5];
    unsigned short	us10[1];
    int			i10[1][2];
    signed int		si10[1][2][3];
    unsigned int	ui10[1][2][3][4];
    long		l10[1][2][3][4][5];
    signed long		sl10[1];
    unsigned long	ul10[1][2];
    float		f10[1][2][3];
    double		d10[1][2][3][4];
    long double		ld10[1][2][3][4][5];
    bool		b10[1];
    wchar_t		w10[1][2];
    long long		ll10[1][2][3];
    signed long long	sll10[1][2][3][4];
    unsigned long long	ull10[1][2][3][4][5];
  }ulobj;

  {
    char		c11[1];
    signed char		sc11[1][2];
    unsigned char	uc11[1][2][3];
    short		s11[1][2][3][4];
    signed short	ss11[1][2][3][4][5];
    unsigned short	us11[1];
    int			i11[1][2];
    signed int		si11[1][2][3];
    unsigned int	ui11[1][2][3][4];
    long		l11[1][2][3][4][5];
    signed long		sl11[1];
    unsigned long	ul11[1][2];
    float		f11[1][2][3];
    double		d11[1][2][3][4];
    long double		ld11[1][2][3][4][5];
    bool		b11[1];
    wchar_t		w11[1][2];
    long long		ll11[1][2][3];
    signed long long	sll11[1][2][3][4];
    unsigned long long	ull11[1][2][3][4][5];
    c11[0] = 0;
  }

  puts("ok");
}
