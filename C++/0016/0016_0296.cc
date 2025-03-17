struct SG {
  char			c1;
  signed char		sc1;
  unsigned char		uc1;
}sgobj;

class CG : public SG {
 public:
  short			s2;
  signed short		ss2;
  unsigned short	us2;
  struct CSG {
    int			i3;
    signed int		si3;
    unsigned int	ui3;
  }csgobj;
}cgobj;

union UG {
  long			l4;
  signed long		sl4;
  unsigned long		ul4;
}ugobj;

char			SG::*c01 = &SG::c1;
char			SG::*(&c011) = c01;
signed char		SG::*sc01 = &SG::sc1;
signed char		SG::*(&sc011) = sc01;
unsigned char		SG::*uc01 = &SG::uc1;
unsigned char		SG::*(&uc011) = uc01;

short			CG::*s02 = &CG::s2;
short			CG::*(&s021) = s02;
signed short		CG::*ss02 = &CG::ss2;
signed short		CG::*(&ss021) = ss02;
unsigned short		CG::*us02 = &CG::us2;
unsigned short		CG::*(&us021) = us02;

int			CG::CSG::*i03 = &CG::CSG::i3;
int			CG::CSG::*(&i031) = i03;
signed int		CG::CSG::*si03 = &CG::CSG::si3;
signed int		CG::CSG::*(&si031) = si03;
unsigned int		CG::CSG::*ui03 = &CG::CSG::ui3;
unsigned int		CG::CSG::*(&ui031) = ui03;

long			UG::*l04 = &UG::l4;
long			UG::*(&l041) = l04;
signed long		UG::*sl04 = &UG::sl4;
signed long		UG::*(&sl041) = sl04;
unsigned long		UG::*ul04 = &UG::ul4;
unsigned long		UG::*(&ul041) = ul04;

#include <stdio.h>
int main()
{
  struct SL {
    float		f5;
    double		d5;
    long double		ld5;
  }slobj;

  class CL : public SL {
   public:
    bool		b6;
    wchar_t		w6;
    struct CSL {
      long long		ll7;
      signed long long	sll7;
      unsigned long long	ull7;
    }cslobj;
  }clobj;
  
  union UL {
    char		c8;
    signed char		sc8;
    unsigned char	uc8;
  }ulobj;

  float			SL::*f05 = &SL::f5;
  float			SL::*(&f051) = f05;
  double		SL::*d05 = &SL::d5;
  double		SL::*(&d051) = d05;
  long double		SL::*ld05 = &SL::ld5;
  long double		SL::*(&ld051) = ld05;

  bool			CL::*b06 = &CL::b6;
  bool			CL::*(&b061) = b06;
  wchar_t		CL::*w06 = &CL::w6;
  wchar_t		CL::*(&w061) = w06;

  long long		CL::CSL::*ll07 = &CL::CSL::ll7;
  long long		CL::CSL::*(&ll071) = ll07;
  signed long long	CL::CSL::*sll07 = &CL::CSL::sll7;
  signed long long	CL::CSL::*(&sll071) = sll07;
  unsigned long long	CL::CSL::*ull07 = &CL::CSL::ull7;
  unsigned long long	CL::CSL::*(&ull071) = ull07;

  char			UL::*c08 = &UL::c8;
  char			UL::*(&c081) = c08;
  signed char		UL::*sc08 = &UL::sc8;
  signed char		UL::*(&sc081) = sc08;
  unsigned char		UL::*uc08 = &UL::uc8;
  unsigned char		UL::*(&uc081) = uc08;

  sgobj.*c011 = 0;
  sgobj.*sc011 = 0;
  sgobj.*uc011 = 0;

  cgobj.*s021 = 0;
  cgobj.*ss021 = 0;
  cgobj.*us021 = 0;

  cgobj.csgobj.*i031 = 0;
  cgobj.csgobj.*si031 = 0;
  cgobj.csgobj.*ui031 = 0;

  ugobj.*l041 = 0;
  ugobj.*sl041 = 0;
  ugobj.*ul041 = 0;


  slobj.*f051 = 0;
  slobj.*d051 = 0;
  slobj.*ld051 = 0;

  clobj.*b061 = 0;
  clobj.*w061 = 0;

  clobj.cslobj.*ll071 = 0;
  clobj.cslobj.*sll071 = 0;
  clobj.cslobj.*ull071 = 0;

  ulobj.*c081 = 0;
  ulobj.*sc081 = 0;
  ulobj.*uc081 = 0;

  puts("ok");
}
