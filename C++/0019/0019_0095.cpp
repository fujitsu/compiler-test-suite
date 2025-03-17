class [[deprecated]] X;

[[deprecated]] typedef unsigned int UINT;

[[deprecated]] int var;

struct Y {
  [[deprecated]] int data;
};

[[deprecated]] void fun();

enum [[deprecated]] E { e1, e2 };

template <class T> class CT;
template <class T> void ft();
template <class T> T vt;
template <> class [[deprecated]] CT<int> {};
template <> [[deprecated]] void ft<int>(){};
template <> [[deprecated]] int vt<int> = 2;

void test() {}

int main() { test(); }
