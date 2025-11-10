#include <iostream>
#include <cstdio>
#include <vector>

using namespace std;

template <typename T1, typename T2>
class Promotion;

template <>
class Promotion<vector<char>, vector<int> >
{
public:
  typedef vector<int> ResultT;
};

template <typename T1, typename T2>
typename Promotion<vector<T1>, vector<T2> >::ResultT
operator + (const vector<T1>& lhs, const vector<T2>& rhs)
{
  typedef typename Promotion<vector<T1>, vector<T2> >::ResultT ResultT;
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
  vector<char> vc;
  vector<int> vi;

  for (int i = 0; i < 10; ++i) {
    vc.push_back(i + 1);
    vi.push_back(i + 3);
  }

  auto ret = vc + vi;

  for (int i = 0; i < ret.size(); ++i) {
    cout << ret[i] << std::endl;
  }
}
