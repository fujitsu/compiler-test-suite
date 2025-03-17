

#include <random>
#include <cassert>

int main()
{
    {
        typedef std::mt19937 Engine;
        typedef std::independent_bits_engine<Engine, 24, unsigned> Adaptor;
        Engine e;
        Engine e0 = e;
        Adaptor a(std::move(e0));
        assert(a.base() == e);
    }
}
