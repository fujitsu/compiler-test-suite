#include <iostream>
#include <omp.h>
#include <vector>

using namespace std;

void iterator_example(int n) {
  std::vector<int> vec;
  int i, cnt;
  unsigned short incr;

  incr = 1;
  for (i = 0; i < n; ++i) {
    vec.push_back(i + n);
  }

  cnt = 0;
#pragma omp parallel for shared(vec) schedule(static, 1)
  for (std::vector<int>::iterator it = vec.begin(); it < vec.end();
       it += incr) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test1 ng: it+=incr: cnt=" << cnt << endl;
  }

  cnt = 0;
#pragma omp parallel for shared(vec) schedule(static, 1)
  for (std::vector<int>::iterator it = vec.begin(); it < vec.end();
       it = it + incr) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test2 ng: it=it+incr: cnt=" << cnt << endl;
  }

  cnt = 0;
#pragma omp parallel for shared(vec) schedule(static, 1)
  for (std::vector<int>::iterator it = vec.begin(); it < vec.end();
       it = incr + it) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test5 ng: it=incr+it: cnt=" << cnt << endl;
  }

  cout << "pass" << endl;
}

int main(void) {
  iterator_example(100);
  return 0;
}
