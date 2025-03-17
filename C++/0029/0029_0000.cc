#include <cmath>
#include <iostream>
#include <vector>

#define N 1024

template <class T> void sub_fission(T &a, T &b, T &c, T &d) {
  int size = a.size();
  for (int i = 0; i < size; ++i) {
    a[i] = a[i] + b[i];
    c[i] = c[i] + d[i];
  }
}

template <class Y> void sub_ans(Y &a, Y &b, Y &c, Y &d) {
  int size = a.size();
  for (int i = 0; i < size; ++i) {
    a[i] = a[i] + b[i];
    c[i] = c[i] + d[i];
  }
}

template <class Z> void sub_init(Z &a, Z &b, Z &c, Z &d) {
  std::vector<double>::iterator itr;
  a.resize(N);
  int i = 0;
  for (itr = a.begin(); itr != a.end(); ++itr, ++i) {
    a[i] = i;
    b.push_back(i * i * 0.5);
    c.push_back((i + 1) * 0.323412);
    d.push_back(sin(a.back() * 1.0));
    a.pop_back();
    a.push_back(cos(2.0 * i));
  }
}

template <class X>
void check_res(X &a, X &b, X &c, X &d, X &ans_a, X &ans_b, X &ans_c, X &ans_d) {
  class checker {
  public:
    checker(X res1, X res2) : a(res1), ans(res2), is_ok(true) {
      if (a.size() != ans.size()) {
        is_ok = false;
      }
      std::vector<double>::iterator itr, itr2;
      for (itr = a.begin(), itr2 = ans.begin();

           itr != a.end(); ++itr, ++itr2) {
        if (*itr != *itr2) {
          is_ok = false;
          break;
        }
      }
    }
    bool get_ok() { return is_ok; }

  private:
    X a;
    X ans;
    bool is_ok;
  };

  class checker ch_a(a, ans_a), ch_b(b, ans_b), ch_c(c, ans_c), ch_d(d, ans_d);

  std::cout << ((ch_a.get_ok() && ch_b.get_ok() && ch_c.get_ok() &&
                 ch_d.get_ok())
                    ? "OK"
                    : "NG")
            << std::endl;
}

int main(void) {
  std::vector<double> a, b, c, d, ans_a, ans_b, ans_c, ans_d;

  sub_init<std::vector<double>>(a, b, c, d);
  sub_init<std::vector<double>>(ans_a, ans_b, ans_c, ans_d);

  sub_fission<std::vector<double>>(a, b, c, d);
  sub_ans<std::vector<double>>(ans_a, ans_b, ans_c, ans_d);

  check_res<std::vector<double>>(a, b, c, d, ans_a, ans_b, ans_c, ans_d);
}
