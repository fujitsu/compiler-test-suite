#include <iostream>
#include <valarray>

class Klass {
  char val_;

public:
  Klass() : val_(0) {}
  Klass(const Klass &k) : val_(k.val()) {}
  ~Klass() {}
  Klass &operator=(const Klass &k) {
    val_ = k.val();
    return *this;
  }

  char val() const { return val_; }
  char val(char v) {
    char tmp = val_;
    val_ = v;
    return tmp;
  }
};

Klass abs(const Klass &k) {
  Klass t(k);
  if (isupper(k.val()))
    t.val(tolower(k.val()));
  return t;
}

int absc() {
  std::valarray<Klass> v(5), w(5);
  v[0].val('A');
  v[1].val('B');
  v[2].val('C');
  v[3].val('D');
  v[4].val('E');

  w = std::abs(v);

  return ((w[0].val() == 'a') && (w[1].val() == 'b') && (w[2].val() == 'c') &&
          (w[3].val() == 'd') && (w[4].val() == 'e'));
}

int main() {
  int i = absc();
  std::cout << (i == 1 ? "OK" : "NG") << std::endl;
  return 0;
}
