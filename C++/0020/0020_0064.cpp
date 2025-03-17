#include <cassert>
#include <memory>
#include <type_traits>

class A
{
};
class B : public A
{
};

void test()
{
  {
    std::shared_ptr<int> ps(new int);
    std::weak_ptr<int> pw(ps);
    std::weak_ptr<int> pw2;
    pw2 = std::move(pw);
    ;
    assert(pw2.use_count() == 1);
    assert(pw.use_count() == 0);
  }

  {
    std::shared_ptr<B> ps(new B);
    std::weak_ptr<B> pwb(ps);
    std::weak_ptr<A> pwa;
    pwa = std::move(pwb);
    ;
    assert(pwa.use_count() == 1);
    assert(pwb.use_count() == 0);
  }
}

int main()
{
  test();

  return 0;
}
