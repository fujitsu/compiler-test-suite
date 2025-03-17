namespace ns {
struct X {};
};

constexpr int foo() {
  ;
  ;
  ;
  ;
  ;
  ;
  ;
  ;
  ;
  ;

  static_assert(true, "message");

  {
    typedef unsigned int uint;
    using UINT = unsigned int;
  }

  using ns::X;

  using namespace ns;

  return 0;
}

int test() {
  const int n = foo();
  return n;
}

int main() { test(); }
