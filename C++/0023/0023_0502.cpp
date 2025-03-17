#include <cassert>

int main()
{
    auto Fwd=[](int(*fp)(int),auto a){return fp(a);};
    auto NC=[](auto a){static int s;return a;};
    assert(Fwd(NC,3)==3);
}
