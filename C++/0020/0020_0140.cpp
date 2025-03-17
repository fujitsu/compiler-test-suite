#include <utility>
#include <cassert>
#include <string>

void test_basic_type()
{
    {
        int v = 12;
        assert(std::exchange(v, 23) == 12);
        assert(v == 23);
        assert(std::exchange(v, 67.2) == 23);
        assert(v == 67);

        assert((std::exchange<int, float>(v, {})) == 67);
        assert(v == 0);
    }

    {
        bool b = false;
        assert(!std::exchange(b, true));
        assert(b);
    }
}

void test_class_type()
{
    const std::string s1("Hi Mom!");
    const std::string s2("Yo Dad!");
    std::string s3 = s1;
    assert(std::exchange(s3, s2) == s1);
    assert(s3 == s2);
    assert(std::exchange(s3, "Hi Mom!") == s2);
    assert(s3 == s1);

    s3 = s2;
    assert(std::exchange(s3, {}) == s2);
    assert(s3.size() == 0);

    s3 = s2;
    assert(std::exchange(s3, "") == s2);
    assert(s3.size() == 0);
}

void f(int flag) { assert(flag == 11); }

void test_compound_type()
{
    void (*fun)(int);

    std::exchange(fun, f);
    fun(11);
}

int main()
{
    test_basic_type();
    test_class_type();
    test_compound_type();

    return 0;
}
