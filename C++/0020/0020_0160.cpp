#include <valarray>
#include <cassert>

int main()
{
    {
        std::valarray<int> a{1, 2};
        std::valarray<int> b{4, 5};

        b = std::move(a);
        assert(b[0] == 1);
        assert(b[1] == 2);
        assert(a.size() == 0);
    }

    {
        std::valarray<int> a{1, 2, 3};
        std::valarray<int> b{4, 5};

        b = std::move(a);
        assert(b[0] == 1);
        assert(b[1] == 2);
        assert(a.size() == 0);
    }

    {
        std::valarray<int> a{1};
        std::valarray<int> b{4, 5};

        b = std::move(a);
        assert(b[0] == 1);
        assert(a.size() == 0);
    }
}
