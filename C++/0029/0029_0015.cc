#include <iostream>
#include <math.h>
#include <stdio.h>
#include <vector>
using namespace std;

int main(int argc, char const *argv[]) {
  std::vector<double> v;
  int i = 1;
  double d, aa, d_rad;
  std::vector<double>::iterator it;
  v.push_back(1);
  v.push_back(2);
  v.push_back(3);
  it = v.begin() + 1;
  aa = *it;
  d = tan((3.14 * i) / aa);
  d_rad = atan(d);
  if (d_rad >= 1.50) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}
