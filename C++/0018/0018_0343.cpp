


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::minstd_rand0 Engine;
        typedef std::knuth_b Adaptor;
        Engine e;
        Adaptor a(e);
        for (unsigned k = 0; k <= Adaptor::table_size; ++k)
            e();
        assert(a.base() == e);
    }
}
