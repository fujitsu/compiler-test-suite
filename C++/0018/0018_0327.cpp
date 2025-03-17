





#include <random>
#include <cassert>

int main()
{
    {
        typedef std::ranlux24_base Engine;
        typedef std::ranlux24 Adaptor;
        Engine e;
        Adaptor a(e);
        assert(a.base() == e);
    }
}
