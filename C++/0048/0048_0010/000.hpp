#ifndef _TEMPLATE_HPP
#define _TEMPLATE_HPP

typedef long int intmax_t;

namespace boost
{
  using ::intmax_t;

  template <bool B, class T = void>
  struct enable_if_c {
    typedef T type;
  };

  template <boost::intmax_t N, boost::intmax_t D = 1> class ratio;
  
  template <boost::intmax_t N, boost::intmax_t D>
  class ratio
  {
  public:
    static const boost::intmax_t num = N;
    static const boost::intmax_t den = D;
    
    ratio() {}

    template <boost::intmax_t _N2, boost::intmax_t _D2>
    ratio(const ratio<_N2, _D2>&,
	  typename enable_if_c
	  <
	  (ratio<_N2, _D2>::num == num &&
	   ratio<_N2, _D2>::den == den)
	  >::type* = 0)
    {}
  };
}

#endif
