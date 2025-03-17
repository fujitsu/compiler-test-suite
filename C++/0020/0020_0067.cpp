#include <mutex>
#include <cassert>

std::mutex m;
std::mutex m0;
std::mutex m1;

void test1()
{
    std::unique_lock<std::mutex> lk0(m0);
    std::unique_lock<std::mutex> lk1(m1);
    lk1 = std::move(lk0);
    assert(lk1.mutex() == &m0);
    assert(lk1.owns_lock() == true);
    assert(lk0.mutex() == nullptr);
    assert(lk0.owns_lock() == false);
}

void test2()
{
    std::unique_lock<std::mutex> lk0(m);
    std::unique_lock<std::mutex> lk = std::move(lk0);
    assert(lk.mutex() == &m);
    assert(lk.owns_lock() == true);
    assert(lk0.mutex() == nullptr);
    assert(lk0.owns_lock() == false);
}

int main()
{
    test1();
    test2();
}
