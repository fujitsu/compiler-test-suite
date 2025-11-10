#include <iostream>
#include <cstdio>
#include <vector>

template <bool C, typename Ta, typename Tb>
class IfThenElse;

template <typename Ta, typename Tb>
class IfThenElse<true, Ta, Tb>
{
public:
  typedef Ta ResultT;
};

template <typename Ta, typename Tb>
class IfThenElse<false, Ta, Tb>
{
public:
  typedef Tb ResultT;
};

template <typename T1, typename T2>
class Promotion
{
public:
  typedef typename IfThenElse<(sizeof(T1) > sizeof(T2)),
                              T1,
                              typename IfThenElse<(sizeof(T1) < sizeof(T2)),
                                                  T2,
						  void
                                                 >::ResultT
                             >::ResultT ResultT;
};

template <typename T>
class Promotion<T, T>
{
public:
  typedef T ResultT;
};

#define MY_PROMOTION(T1, T2, Tr)		\
template <>					\
class Promotion<T1, T2>				\
{						\
public:						\
  typedef Tr ResultT;				\
};						\
						\
template <>					\
class Promotion<T2, T2>				\
{						\
public:						\
  typedef Tr ResultT;				\
}

MY_PROMOTION(char, int, int);

template <typename T1, typename T2>
class Promotion<std::vector<T1>, std::vector<T2>>
{
public:
  typedef std::vector<typename Promotion<T1, T2>::ResultT> ResultT;
};

template <typename T>
class Promotion<std::vector<T>, std::vector<T>>
{
public:
  typedef std::vector<typename Promotion<T, T>::ResultT> ResultT;
};

template <typename T1, typename T2>
typename Promotion<std::vector<T1>, std::vector<T2> >::ResultT
operator + (const std::vector<T1>& lhs, const std::vector<T2>& rhs)
{
  typedef typename Promotion<std::vector<T1>, std::vector<T2> >::ResultT ResultT;
  ResultT result;

  const int size1 = lhs.size();
  const int size2 = rhs.size();

  if (size1 != size2) {
    puts("NG");
    return result;
  }

  for (int i = 0; i < size1; ++i) {
    auto tmp = lhs[i] + rhs[i];
    result.push_back(tmp);
  }

  return result;
}

void sub1()
{
  std::vector<char> vc;
  std::vector<int> vi;

  for (int i = 0; i < 10; ++i) {
    vc.push_back(i + 1);
    vi.push_back(i + 3);
  }

  auto ret = vi + vc;

  for (int i = 0; i < ret.size(); ++i) {
    std::cout << ret[i] << std::endl;
  }
}
