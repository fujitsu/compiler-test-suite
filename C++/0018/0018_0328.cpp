




#include <random>
#include <cassert>

int main()
{
    {
        typedef std::ranlux24_base Engine;
        typedef std::ranlux24 Adaptor;
        Engine e;
        Engine e0 = e;
        Adaptor a(std::move(e0));
        assert(a.base() == e);
    }
}
