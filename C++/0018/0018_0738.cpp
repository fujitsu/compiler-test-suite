






#include <tuple>
#include <functional>
#include <cassert>

int main()
{
    {
        int i = 0;
        float j = 0;
        std::tuple<int, int&, float&> t = std::make_tuple(1, std::ref(i),
                                                          std::ref(j));
        assert(std::get<0>(t) == 1);
        assert(std::get<1>(t) == 0);
        assert(std::get<2>(t) == 0);
        i = 2;
        j = 3.5;
        assert(std::get<0>(t) == 1);
        assert(std::get<1>(t) == 2);
        assert(std::get<2>(t) == 3.5);
        std::get<1>(t) = 0;
        std::get<2>(t) = 0;
        assert(i == 0);
        assert(j == 0);
    }
}
