#include <vector>
#include <iostream>
#include <omp.h>

using namespace std;

unsigned int incr() {
  return 1U;
}
void iterator_example(int n) {
  std::vector<int> vec;
  int i, cnt;
  unsigned int var1, var2;
  var1 = 1;
  var2 = 0;

  for (i = 0; i < n; ++i) {
    vec.push_back(i+n);
  }

  cnt = 0;
#pragma omp parallel for shared(vec)
  for (std::vector<int>::iterator it = vec.end(); it > vec.begin(); it-=(var1+var2)) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test1 ng: it-=(var1+var2): cnt=" << cnt << endl;
  }

  cnt = 0;
#pragma omp parallel for shared(vec)
  for (std::vector<int>::iterator it = vec.end(); it > vec.begin(); it=it-(var1+var2)) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test2 ng: it=it-(var1+var2): cnt=" << cnt << endl;
  }

  cnt = 0;
#pragma omp parallel for shared(vec)
  for (std::vector<int>::iterator it = vec.end(); it > vec.begin(); it-=incr()) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test3 ng: it-=incr(): cnt=" << cnt << endl;
  }

  cnt = 0;
#pragma omp parallel for shared(vec)
  for (std::vector<int>::iterator it = vec.end(); it > vec.begin(); it=it-incr()) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test4 ng: it=it-incr(): cnt=" << cnt << endl;
  }

  cout << "pass" << endl;
}

int main(void) {
  iterator_example(100);
  return 0;
}
