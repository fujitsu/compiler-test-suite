#include <vector>
#include <iostream>
#include <omp.h>

using namespace std;

void iterator_example(int n) {
  std::vector<int> vec;
  int i, cnt;

  for (i = 0; i < n; ++i) {
    vec.push_back(i+n);
  }

  cnt = 0;
#pragma omp parallel for shared(vec) schedule(static,1)
  for (std::vector<int>::iterator it = vec.begin(); it < vec.end(); ++it) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test1 ng: ++it: cnt=" << cnt << endl;
  }

  cout << "pass" << endl;
}

int main(void) {
  iterator_example(100);
  return 0;
}
