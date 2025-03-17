#include <utility>
#include <string>
#include <type_traits>
#include <complex>
#include <memory>

#include <cassert>

int main()
{

    {
        typedef std::unique_ptr<int> upint;
        std::pair<upint, int> t(upint(new int(4)), 42);
        upint p = std::get<upint>(std::move(t));
        assert(*p == 4);
        assert(std::get<upint>(t) == nullptr);

        int x = std::get<int>(std::move(t));
        assert(x == 42);
    }
}
