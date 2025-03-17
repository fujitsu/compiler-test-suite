#include <cassert>

inline double g = 1.0;
inline const double g1 = 2.0;
inline volatile double g2 = 3.0;

int main()
{
    assert(g == 1.0);
    assert(g1 == 2.0);
    assert(g2 == 3.0);
}
