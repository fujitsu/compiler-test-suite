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
  for (std::vector<int>::iterator it = vec.end(); it > vec.begin(); it -= 1LL) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test1 ng: it-=1LL: cnt=" << cnt << endl;
  }

  cnt = 0;
#pragma omp parallel for shared(vec)
  for (std::vector<int>::iterator it = vec.end(); it > vec.begin();
       it = it - 1LL) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test2 ng: it=it-1LL: cnt=" << cnt << endl;
  }

  cout << "pass" << endl;
}

int main(void) {
  iterator_example(100);
  return 0;
}
