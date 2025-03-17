#include <iostream>
#include <map>
using namespace std;

template <class Type> class Max_Min {
public:
  Max_Min(int size);
  Type Find_Max(int size) {
    int i;
    Type max_value;
    max_value = a[1];
    for (i = 0; i < size - 1; i++) {
      if (max_value < a[i]) {
        max_value = a[i];
      }
    }
    return max_value;
  }

  Type Find_Max(int size, int *index_value) {
    int i;
    Type max_value;
    max_value = a[1];
    for (i = 0; i < size - 1; i++) {
      if (max_value < a[i]) {
        max_value = a[i];
        *index_value = i;
      }
    }
    return max_value;
  }

  void print(int iMax_Value, int ok_result) {
    if (iMax_Value == ok_result) {
      cout << "TEST1 OK" << endl;
    } else {
      cout << "NG" << endl;
      cout << "OK imax = " << ok_result << endl;
      cout << "NG imax = " << iMax_Value << endl;
    }
  }

  void print(map<int, int> iMax_map, int ok_result1, int ok_result2) {
    map<int, int>::iterator map_itr;

    map_itr = iMax_map.begin();

    if (map_itr->first == ok_result1 && map_itr->second == ok_result2) {
      cout << "TEST2 OK" << endl;
    } else {
      cout << "NG" << endl;
      cout << "OK imax = " << ok_result1 << endl;
      cout << "NG imax = " << map_itr->first << endl;
      cout << "OK ivalue = " << ok_result2 << endl;
      cout << "NG ivalue = " << map_itr->second << endl;
    }
  }

private:
  Type a[100];
};

template <class Type> Max_Min<Type>::Max_Min(int size) {
  for (int i = 0; i < size - 1; i++) {
    a[i] = i * 2;
  }
}

int main(int argc, char *argv[]) {
  int ivalue = 0;
  Max_Min<int> intMax(100);
  Max_Min<int> intMaxValue(100);
  map<int, int> iMax_map;

  int iMax_Value = intMax.Find_Max(100);

  intMax.print(iMax_Value, 196);

  iMax_Value = intMaxValue.Find_Max(100, &ivalue);

  iMax_map.insert(pair<int, int>(iMax_Value, ivalue));
  intMaxValue.print(iMax_map, 196, 98);

  return 0;
}
