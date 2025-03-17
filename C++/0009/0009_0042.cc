#include <iostream>
#include <omp.h>
#include <vector>

using namespace std;

void iterator_example(int n) {
  std::vector<int> vec;
  int i, cnt;
  signed char incr;
  int nn = 1;

  incr = 1;
  for (i = 0; i < n; ++i) {
    vec.push_back(i + n);
  }

  cnt = 0;
#pragma omp parallel for shared(vec) schedule(static, nn)
  for (std::vector<int>::iterator it = vec.end(); it > vec.begin();
       it -= incr) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test1 ng: it-=incr: cnt=" << cnt << endl;
  }

  cnt = 0;
#pragma omp parallel for shared(vec) schedule(static, nn)
  for (std::vector<int>::iterator it = vec.end(); it > vec.begin();
       it = it - incr) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test1 ng: it=it-incr: cnt=" << cnt << endl;
  }

  cout << "pass" << endl;
}

int main(void) {
  iterator_example(100);
  return 0;
}
