#include <iostream>
#include <omp.h>
#include <vector>

using namespace std;

unsigned long long int incr() { return 1ULL; }
void iterator_example(int n) {
  std::vector<int> vec;
  int i, cnt;
  unsigned long long int var1, var2;
  int nn = 1;
  var1 = 1;
  var2 = 0;

  for (i = 0; i < n; ++i) {
    vec.push_back(i + n);
  }

  cnt = 0;
#pragma omp parallel for shared(vec) schedule(static, nn)
  for (std::vector<int>::iterator it = vec.begin(); it < vec.end();
       it += (var1 + var2)) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test1 ng: it+=(var1+var2): cnt=" << cnt << endl;
  }

  cnt = 0;
#pragma omp parallel for shared(vec) schedule(static, nn)
  for (std::vector<int>::iterator it = vec.begin(); it < vec.end();
       it = it + (var1 + var2)) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test2 ng: it=it+(var1+var2): cnt=" << cnt << endl;
  }

  cnt = 0;
#pragma omp parallel for shared(vec) schedule(static, nn)
  for (std::vector<int>::iterator it = vec.begin(); it < vec.end();
       it = (var1 + var2) + it) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test3 ng: it=(var1+var2)+it: cnt=" << cnt << endl;
  }

  cnt = 0;
#pragma omp parallel for shared(vec) schedule(static, nn)
  for (std::vector<int>::iterator it = vec.begin(); it < vec.end();
       it += incr()) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test1 ng: it+=incr(): cnt=" << cnt << endl;
  }

  cnt = 0;
#pragma omp parallel for shared(vec) schedule(static, nn)
  for (std::vector<int>::iterator it = vec.begin(); it < vec.end();
       it = it + incr()) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test2 ng: it=it+incr(): cnt=" << cnt << endl;
  }

  cnt = 0;
#pragma omp parallel for shared(vec) schedule(static, nn)
  for (std::vector<int>::iterator it = vec.begin(); it < vec.end();
       it = incr() + it) {
#pragma omp atomic
    cnt++;
  }
  if (cnt != n) {
    cout << "test3 ng: it=incr()+it: cnt=" << cnt << endl;
  }

  cout << "pass" << endl;
}

int main(void) {
  iterator_example(100);
  return 0;
}
