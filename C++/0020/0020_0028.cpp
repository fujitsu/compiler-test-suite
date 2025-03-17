#include <future>

int main()
{
  static_assert(static_cast<int>(std::future_errc::future_already_retrieved) == 1, "");
  static_assert(static_cast<int>(std::future_errc::promise_already_satisfied) == 2, "");
  static_assert(static_cast<int>(std::future_errc::no_state) == 3, "");
  static_assert(static_cast<int>(std::future_errc::broken_promise) == 4, "");
  return 0;
  ;
}
