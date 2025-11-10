#ifndef _COMPOSE1_HPP
#define _COMPOSE1_HPP

template <typename FO1, typename FO2>
class Composer
{
private:
  FO1 fo1;
  FO2 fo2;

public:
  Composer(FO1 f1, FO2 f2):
    fo1(f1), fo2(f2)
  {}

  double operator () (double v)
  {
    return fo2(fo1(v));
  }
};

#endif
