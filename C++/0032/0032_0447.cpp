template <typename T>
class BASE {                                                       
public:
  T mem;                                                           
  static constexpr const T& get(const BASE& _b) { return _b.mem; } 
};

template <typename ...E> struct DERIVED;                           
template <typename H, typename...T>
class DERIVED<H, T...>: public DERIVED<T...>, public BASE<H> { };  
template <typename T>
class DERIVED<T>: public BASE<T> { };                              

class test : public DERIVED<float, double> { };
constexpr bool func(const test& t)
{
  return BASE<float>::get(t);
}

#include <cstdio>

int main()
{
  (void)func(test());
  printf("tested\n");
  return 0;
}

