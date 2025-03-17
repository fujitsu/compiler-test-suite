#include <mutex>
#include <thread>
#include <cassert>

std::once_flag flag1;
std::once_flag flag2;
int value = 0;

struct Inc
{
    void operator()() const { ++value; }
};

struct Func
{
    void operator()() const
    {
        Inc inc;
        for (int i = 0; i < 10000; ++i)
            std::call_once(flag1, inc);
    }
};

int main()
{
    Func f;
    Inc inc;
    std::thread t1(f);
    std::thread t2(f);
    std::thread t3(f);
    t1.join();
    t2.join();
    t3.join();
    assert(value == 1);
    std::call_once(flag1, inc);
    assert(value == 1);
    std::call_once(flag2, inc);
    assert(value == 2);
    return 0;
}
