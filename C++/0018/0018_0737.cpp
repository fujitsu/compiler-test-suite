







#include <tuple>
#include <utility>
#include <cassert>

int main()
{
    {
        typedef std::pair<double, char> T0;
        typedef std::tuple<int, short> T1;
        T0 t0(2.5, 'a');
        T1 t1;
        t1 = t0;
        assert(std::get<0>(t1) == 2);
        assert(std::get<1>(t1) == short('a'));
    }
}
