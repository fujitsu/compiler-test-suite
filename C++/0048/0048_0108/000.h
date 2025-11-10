
#include <cstddef>


namespace NS1{
  template<std::nullptr_t N>
  class C1{
    public:
      C1() : member(N){}
      int* getMember(){
        return member;
      }

    private:
      int* member;
  };
}
