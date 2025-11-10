#include "public1/004.h"

enum { Apple, Banana, Orange };
enum : char { A, B, C};

namespace ns_test
{
    enum { Apple, Banana, Orange };
    enum : char { A, B, C};
}

class cls_test
{
public:
    enum { Apple, Banana, Orange };
    enum : char { A, B, C};
};

void test() {}

PASS_CASE_MAIN_FUNCTION
