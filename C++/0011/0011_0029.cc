#include <iostream>
#include <omp.h>
#include <vector>

using namespace std;

void iterator_example(int n) {
  std::vector<int> vec;
  int i, cnt;

  for (i = 0; i < n; ++i) {
    vec.push_back(i + n);
  }

  cnt = 0;
#pragma omp parallel for shared(vec)
  for (std::vector<int>::iterator it = vec.begin(); it < vec.end();
       it += 1ULL) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test1 ng: it+=1ULL: cnt=" << cnt << endl;
  }

  cnt = 0;
#pragma omp parallel for shared(vec)
  for (std::vector<int>::iterator it = vec.begin(); it < vec.end();
       it = it + 1ULL) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test2 ng: it=it+1ULL: cnt=" << cnt << endl;
  }

  cnt = 0;
#pragma omp parallel for shared(vec)
  for (std::vector<int>::iterator it = vec.begin(); it < vec.end();
       it = 1ULL + it) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test3 ng: it=1ULL+it: cnt=" << cnt << endl;
  }

  cout << "pass" << endl;
}

int main(void) {
  iterator_example(100);
  return 0;
}
