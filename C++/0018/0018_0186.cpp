





#include <future>
#include <cassert>

int main()
{
    {
        typedef void T;
        std::promise<T> p;
        std::future<T> f = p.get_future();
        p.set_value();
        f.get();
        try
        {
            p.set_value();
            assert(false);
        }
        catch (const std::future_error& e)
        {
            assert(e.code() == make_error_code(std::future_errc::promise_already_satisfied));
        }
    }
}
