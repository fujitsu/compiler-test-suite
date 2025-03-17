#include <iostream>
#include <vector>

using namespace std;

vector<int> vect(100);

class Int_Sum {
public:
  Int_Sum() {
    int i;
    vector<int>::iterator elm = vect.begin();
    vector<int>::iterator elm_end = vect.end();

    i = 1;

    for (; elm != elm_end; elm++) {
      *elm = i;
      i++;
    }
  }
  int Sum_Operation() {
    vector<int>::iterator elm = vect.begin();
    vector<int>::iterator elm_end = vect.end();
    total_value = 0;

    for (; elm != elm_end - 1; elm++) {
      total_value = total_value + *elm;
    }
    return total_value;
  }

  int reverse_Operation() {
    vector<int>::reverse_iterator relm = vect.rbegin();
    vector<int>::reverse_iterator relm_end = vect.rend();

    total_value = 0;

    for (; relm != relm_end - 1; relm++) {
      total_value = total_value + *relm;
    }
    return total_value;
  }

private:
  int total_value;
};

int main(int argc, char *argv[]) {
  Int_Sum intSum;

  int int_res = intSum.Sum_Operation();

  if (int_res == 4950) {
    cout << "TEST1 OK" << endl;
  } else {
    cout << "NG" << endl;
    cout << "OK result = 4950" << endl;
    cout << "NG result = " << int_res << endl;
  }

  int_res = intSum.reverse_Operation();

  if (int_res == 5049) {
    cout << "TEST2 OK" << endl;
  } else {
    cout << "NG" << endl;
    cout << "OK result = 5049" << endl;
    cout << "NG result = " << int_res << endl;
  }

  return 0;
}
