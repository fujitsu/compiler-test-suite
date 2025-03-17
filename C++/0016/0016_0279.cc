char			c0;
signed char		sc0;
unsigned char		uc0;
short			s0;
signed short		ss0;
unsigned short		us0;
int			i0;
signed int		si0;
unsigned int		ui0;
long			l0;
signed long		sl0;
unsigned long		ul0;
void			*v0;
float			f0;
double			d0;
long double		ld0;
bool			b0;
wchar_t			w0;
long long		ll0;
signed long long	sll0;
unsigned long long	ull0;

struct SG {
  char			c1;
  signed char		sc1;
  unsigned char		uc1;
  short			s1;
  signed short		ss1;
  unsigned short	us1;
  int			i1;
  signed int		si1;
  unsigned int		ui1;
  long			l1;
  signed long		sl1;
  unsigned long		ul1;
  void			*v1;
  float			f1;
  double		d1;
  long double		ld1;
  bool			b1;
  wchar_t		w1;
  long long		ll1;
  signed long long	sll1;
  unsigned long long	ull1;
}sgobj;

class CG : public SG {
 public:
  char			c2;
  signed char		sc2;
  unsigned char		uc2;
  short			s2;
  signed short		ss2;
  unsigned short	us2;
  int			i2;
  signed int		si2;
  unsigned int		ui2;
  long			l2;
  signed long		sl2;
  unsigned long		ul2;
  void			*v2;
  float			f2;
  double		d2;
  long double		ld2;
  bool			b2;
  wchar_t		w2;
  long long		ll2;
  signed long long	sll2;
  unsigned long long	ull2;
  struct CSG {
    char		c3;
    signed char		sc3;
    unsigned char	uc3;
    short		s3;
    signed short	ss3;
    unsigned short	us3;
    int			i3;
    signed int		si3;
    unsigned int	ui3;
    long		l3;
    signed long		sl3;
    unsigned long	ul3;
    void		*v3;
    float		f3;
    double		d3;
    long double		ld3;
    bool		b3;
    wchar_t		w3;
    long long		ll3;
    signed long long	sll3;
    unsigned long long	ull3;
  }csgobj;
}cgobj;

union UG {
  char			c4;
  signed char		sc4;
  unsigned char		uc4;
  short			s4;
  signed short		ss4;
  unsigned short	us4;
  int			i4;
  signed int		si4;
  unsigned int		ui4;
  long			l4;
  signed long		sl4;
  unsigned long		ul4;
  void			*v4;
  float			f4;
  double		d4;
  long double		ld4;
  bool			b4;
  wchar_t		w4;
  long long		ll4;
  signed long long	sll4;
  unsigned long long	ull4;
}ugobj;

enum EG {
  			c5,
			sc5,
			uc5,
			s5,
			ss5,
			us5,
			i5,
			si5,
			ui5,
			l5,
			sl5,
			ul5,
			f5,
			d5,
			ld5,
			b5,
			w5,
			ll5,
			sll5,
			ull5
}egobj;

namespace NG {
  char			c6;
  signed char		sc6;
  unsigned char		uc6;
  short			s6;
  signed short		ss6;
  unsigned short	us6;
  int			i6;
  signed int		si6;
  unsigned int		ui6;
  long			l6;
  signed long		sl6;
  unsigned long		ul6;
  void			*v6;
  float			f6;
  double		d6;
  long double		ld6;
  bool			b6;
  wchar_t		w6;
  long long		ll6;
  signed long long	sll6;
  unsigned long long	ull6;
}
using namespace NG;

#include <stdio.h>
int main()
{
  char			c7;
  signed char		sc7;
  unsigned char		uc7;
  short			s7;
  signed short		ss7;
  unsigned short	us7;
  int			i7;
  signed int		si7;
  unsigned int		ui7;
  long			l7;
  signed long		sl7;
  unsigned long		ul7;
  void			*v7;
  float			f7;
  double		d7;
  long double		ld7;
  bool			b7;
  wchar_t		w7;
  long long		ll7;
  signed long long	sll7;
  unsigned long long	ull7;

  struct SL {
    char		c8;
    signed char		sc8;
    unsigned char	uc8;
    short		s8;
    signed short	ss8;
    unsigned short	us8;
    int			i8;
    signed int		si8;
    unsigned int	ui8;
    long		l8;
    signed long		sl8;
    unsigned long	ul8;
    void		*v8;
    float		f8;
    double		d8;
    long double		ld8;
    bool		b8;
    wchar_t		w8;
    long long		ll8;
    signed long long	sll8;
    unsigned long long	ull8;
  }slobj;

  class CL : public SL {
   public:
    char		c9;
    signed char		sc9;
    unsigned char	uc9;
    short		s9;
    signed short	ss9;
    unsigned short	us9;
    int			i9;
    signed int		si9;
    unsigned int	ui9;
    long		l9;
    signed long		sl9;
    unsigned long	ul9;
    void		*v9;
    float		f9;
    double		d9;
    long double		ld9;
    bool		b9;
    wchar_t		w9;
    long long		ll9;
    signed long long	sll9;
    unsigned long long	ull9;
    struct CSL {
      char		c10;
      signed char	sc10;
      unsigned char	uc10;
      short		s10;
      signed short	ss10;
      unsigned short	us10;
      int		i10;
      signed int	si10;
      unsigned int	ui10;
      long		l10;
      signed long	sl10;
      unsigned long	ul10;
      void		*v10;
      float		f10;
      double		d10;
      long double	ld10;
      bool		b10;
      wchar_t		w10;
      long long		ll10;
      signed long long	sll10;
      unsigned long long	ull10;
    }cslobj;
  }clobj;
  
  union UL {
    char		c11;
    signed char		sc11;
    unsigned char	uc11;
    short		s11;
    signed short	ss11;
    unsigned short	us11;
    int			i11;
    signed int		si11;
    unsigned int	ui11;
    long		l11;
    signed long		sl11;
    unsigned long	ul11;
    void		*v11;
    float		f11;
    double		d11;
    long double		ld11;
    bool		b11;
    wchar_t		w11;
    long long		ll11;
    signed long long	sll11;
    unsigned long long	ull11;
  }ulobj;

  enum EL {
  			c12,
			sc12,
			uc12,
			s12,
			ss12,
			us12,
			i12,
			si12,
			ui12,
			l12,
			sl12,
			ul12,
			f12,
			d12,
			ld12,
			b12,
			w12,
			ll12,
			sll12,
			ull12
  }elobj;

  {
    char		c13;
    signed char		sc13;
    unsigned char	uc13;
    short		s13;
    signed short	ss13;
    unsigned short	us13;
    int			i13;
    signed int		si13;
    unsigned int	ui13;
    long		l13;
    signed long		sl13;
    unsigned long	ul13;
    void		*v13;
    float		f13;
    double		d13;
    long double		ld13;
    bool		b13;
    wchar_t		w13;
    long long		ll13;
    signed long long	sll13;
    unsigned long long	ull13;
    i13 = 0;
  }

  puts("ok");
}
