#include "000.h"
#include <iostream>

namespace {
  namespace nm2 {
    namespace {
      namespace nm3_1 {
        template <class T> class cl01 {
          public:
          T clf01() { return (0); }
        };
      }
    }
  }
}

namespace {
  namespace {
    namespace {
      namespace nm3_1 {
        template <class T> class cl01 {
          public:
          T clf01() { return (0); }
        };
      }
      namespace nm3_2 {
        template <class T> class cl01 {
          public:
          T clf01() { return (1); }
        };
      }
      using namespace nm3_1 __attribute__((strong));
      template <> class cl01<short int> {
        public:
        int clf01() { return (2); }
      };

      template <class T> T func(cl01<T>) { return (0); }
    }
  }
}

int main() {
  header("test", "strong attribute test");

  {
    long l01;
    cl01<long> cls01;
    l01 = cls01.clf01();
    lichck(01, func(cls01), l01, "member function return value");
  }

  {
    short s01;
    cl01<short> cls01;
    s01 = cls01.clf01();
    sichck(02, 2, s01, "member function return value");
  }

  header("test", "strong attribute test");
  return 0;
}
