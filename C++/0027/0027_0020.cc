#include <iostream>

template <class T> struct TC {
  T start_index;
  T end_index;
  int val;
  int parray[100];
  T loop_fusion_counter_member(void);
  T loop_fusion_counter_operator(void);
  TC(int ei = 10) {
    int i;
    start_index = (T)0;
    end_index = (T)ei;
    val = 5;
    for (i = 0; i < 100; ++i) {
      parray[i] = i;
    }
  }
  operator int() const { return this->val; }
};

template <class T> T TC<T>::loop_fusion_counter_member() {
  T i;
  T tmp = 0, tmp2 = 0;

  for (i = start_index; i < end_index; i++) {
    tmp += parray[(int)i];
  }
  for (i = start_index; i < end_index; i++) {
    tmp2 += parray[(int)i];
  }
  return tmp + tmp2;
}

template <class T> T TC<T>::loop_fusion_counter_operator() {
  T i;
  int tmp = 0, tmp2 = 0;

  for (i = start_index; i < end_index; i++) {
    tmp += *this;
  }
  for (i = start_index; i < end_index; i++) {
    tmp2 += *this + 1;
  }
  return tmp + tmp2;
}

int main() {
  int res;
  TC<int> i4obj;
  res = i4obj.loop_fusion_counter_member();
  res += i4obj.loop_fusion_counter_operator();
  if (res == 200) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG : " << res << std::endl;
  }
  return 0;
}
