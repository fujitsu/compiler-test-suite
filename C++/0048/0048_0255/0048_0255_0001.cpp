#include <vector>
#include <cstdio>

using namespace std;

void init(vector<int>& iv)
{
  const int size = iv.size();

  for (int i = 0; i < size; ++i) {
    iv[i] = i;
  }
}

void sub1()
{
  vector<int> iv1(10);
  init(iv1);

  vector<int> iv2;
  for (vector<int>::iterator itBegin = iv1.begin(), itEnd = iv1.end();
       itBegin != itEnd;
       ++itBegin) {
    iv2.push_back(*itBegin + 2);
  }

  iv1.clear();
  if (!iv1.empty()) {
    std::puts("NG 1");
    return;
  }
  
  int master = 2;
  for (vector<int>::const_iterator itBegin = iv2.begin(), itEnd = iv2.end();
       itBegin != itEnd;
       ++itBegin) {
    if (*itBegin != master) {
      std::puts("NG 2");
      return;
    }
    ++master;
  }

  std::puts("OK");
}
