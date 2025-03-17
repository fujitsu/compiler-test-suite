#include <cassert>

double a;
const double b = 1;
volatile double c;

int main()
{
    assert(a == 0);
    assert(b == 1);
    assert(c == 0);
}
