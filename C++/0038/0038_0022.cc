#include <iostream>
using namespace std;

template <class data_t> class list {
  data_t data;
  list *next;

public:
  list(data_t d);
  void add(list *node) {
    node->next = this;
    next = NULL;
  }

  list *getnext() { return next; }

  data_t getdata() { return data; }
};

template <class data_t> list<data_t>::list(data_t d) {
  data = d;
  next = NULL;
}

int main() {
  list<char> start('a');
  list<char> *p, *last;

  last = &start;

  for (int i = 0; i < 26; ++i) {
    p = new list<char>('a' + i);
    p->add(last);
  }

  p = &start;

  while (p) {
    if (p->getdata() != 'a' && p->getdata() != 'z') {
      std::cout << "NG" << std::endl;
      return 0;
    }
    p = p->getnext();
  }

  std::cout << "OK" << std::endl;

  return 0;
}
