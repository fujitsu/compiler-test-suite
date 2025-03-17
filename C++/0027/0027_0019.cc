#include <iostream>

template <class T> struct TC {
  T start_index;
  T end_index;
  T *parray;
  T loop_fusion_counter_self(void);
  T loop_fusion_counter_other(T, T const *);
  TC(int ei = 10) {
    int i;
    start_index = 0;
    end_index = ei;
    parray = (T *)malloc(sizeof(T) * (ei + 1));
    for (i = 0; i < ei + 1; ++i) {
      parray[i] = i;
    }
  }
};

template <class T> T TC<T>::loop_fusion_counter_self() {
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

template <class T> T TC<T>::loop_fusion_counter_other(T n, T const *p) {
  T i;
  T tmp = 0, tmp2 = 0;

  for (i = 0; i < n; i++) {
    tmp += p[(int)i];
  }
  for (i = 0; i < n; i++) {
    tmp2 += p[(int)i];
  }
  return tmp + tmp2;
}

int main() {
  int res;
  char i1a[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  short i2a[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int i4a[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  long long int i8a[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  float r4a[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  double r8a[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  long double r16a[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  TC<char> i1obj;
  TC<short> i2obj;
  TC<int> i4obj;
  TC<long long> i8obj;
  TC<unsigned char> u1obj;
  TC<unsigned short> u2obj;
  TC<unsigned int> u4obj;
  TC<unsigned long long> u8obj;
  TC<float> r4obj;
  TC<double> r8obj;
  TC<long double> r16obj;
  res = i1obj.loop_fusion_counter_self();
  res += i1obj.loop_fusion_counter_other(10, i1a);
  res += i2obj.loop_fusion_counter_self();
  res += i2obj.loop_fusion_counter_other(10, i2a);
  res += i4obj.loop_fusion_counter_self();
  res += i4obj.loop_fusion_counter_other(10, i4a);
  res += i8obj.loop_fusion_counter_self();
  res += i8obj.loop_fusion_counter_other(10, i8a);
  res += u1obj.loop_fusion_counter_self();
  res += u1obj.loop_fusion_counter_other(10, (unsigned char *)i1a);
  res += u2obj.loop_fusion_counter_self();
  res += u2obj.loop_fusion_counter_other(10, (unsigned short *)i2a);
  res += u4obj.loop_fusion_counter_self();
  res += u4obj.loop_fusion_counter_other(10, (unsigned int *)i4a);
  res += u8obj.loop_fusion_counter_self();
  res += u8obj.loop_fusion_counter_other(10, (unsigned long long *)i8a);
  res += r4obj.loop_fusion_counter_self();
  res += r4obj.loop_fusion_counter_other(10, r4a);
  res += r8obj.loop_fusion_counter_self();
  res += r8obj.loop_fusion_counter_other(10, r8a);
  res += r16obj.loop_fusion_counter_self();
  res += r16obj.loop_fusion_counter_other(10, r16a);
  if (res == 1980) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }
  return 0;
}
