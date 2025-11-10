template <typename FO1, typename FO2>
inline Composer<FO1, FO2> compose(FO1 f1, FO2 f2)
{
  return Composer<FO1, FO2>(f1, f2);
}
