class [[deprecated("I'm deprecated")]] X;

[[deprecated("I'm deprecated")]] typedef unsigned int UINT;

[[deprecated("I'm deprecated")]] int var;

struct Y {
  [[deprecated("I'm deprecated")]] int data;
};

[[deprecated("I'm deprecated")]] void fun();

enum [[deprecated("I'm deprecated")]] E{e1, e2};

template <class T> class CT;
template <class T> void ft();
template <class T> T vt;
template <> class [[deprecated("I'm deprecated")]] CT<int>{};
template <> [[deprecated("I'm deprecated")]] void ft<int>(){};
template <> [[deprecated("I'm deprecated")]] int vt<int> = 2;

class X {};

void fun() {}

void test() {
  X ox;
  UINT ui = 0;
  var = 1;
  Y sy;
  sy.data = ui;
  fun();
  enum E oe;

  CT<int> oct;
  ft<int>();
  int v = vt<int>;
}

int main() {
  test();
  return 0;
}
