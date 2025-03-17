namespace ns {
struct X {};
};

struct X {
  constexpr X() {
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
  }
};

void test() {}

int main() { test(); }
