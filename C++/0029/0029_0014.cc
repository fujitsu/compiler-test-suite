#include <iostream>
#include <math.h>
#include <stdio.h>
#include <vector>
using namespace std;

int main(int argc, char const *argv[]) {
  std::vector<double> v;
  int i = 0;
  double d, aa, d_rad, sum;
  sum = 1.0;
  v.push_back(1);
  v.push_back(2);
  v.push_back(3);
  for (std::vector<double>::iterator it = v.begin(); it != v.end(); ++it) {
    ++i;
    aa = *it;
    d = tan((3.14 * i) / aa);
    d_rad = -atan(d);
    sum = sum + d_rad;
  }
  if (sum >= 1) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}
