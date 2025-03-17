#include <iostream>
template <class T> class List {
  int size_;
  T *__restrict v_;

public:
  inline int size() const;
  inline List<T> &val();
  List();
  List(int);
  T &operator[](int x);
};

template <class T> inline int List<T>::size() const { return size_; }

template <class T> inline List<T> &List<T>::val() { return *this; }

template <class T> inline T &List<T>::operator[](int x) {
  if (v_ == NULL) {
    std::cout << " TEST MESSAGE " << std::endl;
  }
  return v_[x];
}

template <class T> List<T>::List() {
  size_ = 0;
  v_ = NULL;
}

template <class T> List<T>::List(int x) {
  size_ = x;
  v_ = new T[x];
}

int main(int argc, char *argv[]) {
  List<List<int>> a(1);
  List<int> c(1);
  a[0] = c;
  for (int i = 0; i < a.size(); i++) {

    const List<int> b(a[i].val());
    for (int j = 0; j < b.size(); j++) {
      std::cout << "Hello world." << std::endl;
    }
  }
  return 0;
}
