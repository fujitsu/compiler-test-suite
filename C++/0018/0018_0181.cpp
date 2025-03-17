





#include <future>
#include <cassert>

int main()
{
    {
        typedef int& T;
        int i = 3;
        std::promise<T> p;
        std::future<T> f = p.get_future();
        p.set_value(i);
        int& j = f.get();
        assert(j == 3);
        ++i;
        assert(j == 4);
        try
        {
            p.set_value(i);
            assert(false);
        }
        catch (const std::future_error& e)
        {
            assert(e.code() == make_error_code(std::future_errc::promise_already_satisfied));
        }
    }
}
