#include <iostream>
using namespace std;

#define DEFAULT_SIZE 300

template <class Type> class Test {
public:
  Test() {
    int x;
    int y;
    for (y = 0; y < DEFAULT_SIZE; y++) {
      for (x = 0; x < DEFAULT_SIZE; x++) {
        data[y][x] = x * y + x;
      }
    }
  }
  ~Test() {}
  Type GetSum() {
    int x;
    int y;
    Type sum = 0;
    for (y = 0; y < DEFAULT_SIZE; y++) {
      for (x = 0; x < DEFAULT_SIZE; x++) {
        sum += data[y][x];
      }
    }
    return sum;
  }

private:
  Type data[DEFAULT_SIZE][DEFAULT_SIZE];
};

int main(int argc, char *argv[]) {
  Test<int> *iTest = new Test<int>();
  Test<float> *fTest = new Test<float>();
  int iSum = iTest->GetSum();
  float fSum = fTest->GetSum();
  int diff = abs((int)fSum - iSum);
  bool brc = (diff < 10000);
  if (brc) {
    cout << "OK" << endl;
  } else {
    cout << "NG" << endl;
    cout << "iSum = " << iSum << endl;
    cout << "fSum = " << fSum << endl;
    cout << "diff = " << diff << endl;
  }
  return brc;
}
