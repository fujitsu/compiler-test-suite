#include <cstdio>
#include <vector>
#include <initializer_list>



class MyIntVector
{
private:
  std::vector<int> data;

public:
  MyIntVector(std::initializer_list<int> init):
    data(init.begin(), init.end())
  {}

  void show()
  {
    std::printf("%d %d %d %d %d\n",
		data[0], data[1], data[2], data[3], data[4]);
  }
};

void sub1()
{
  MyIntVector myVec = { 1, 2, 3, 4 ,5};
  myVec.show();
}
