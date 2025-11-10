#include <vector>

class TestClass
{
public:
  int _i;
};

template class std::vector<TestClass>;

int main(void){

  return 0;
}
