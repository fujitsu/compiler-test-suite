#include <deque>
#include <cstdio>

void sub1()
{
  std::deque<int> deq;
  
  deq.push_back(1);
  deq.insert(deq.begin() + 1, 2);
  deq.push_back(3);
  deq.insert(deq.end(), 4);

  int counter = 1;
  for (std::deque<int>::iterator begin = deq.begin(),
	 end = deq.end();
       begin != end;
       ++begin) {
    if (*begin != counter) {
      std::puts("NG 1");
      return;
    }
    ++counter;
  }

  deq.pop_back();
  if (deq.empty()) {
    std::puts("NG 2");
    return;
  }

  deq.pop_front();
  if (deq.empty()) {
    std::puts("NG 3");
    return;
  }

  deq.erase(deq.begin());
  if (deq.size() != 1) {
    std::puts("NG 4");
    return;
  }

  deq.resize(4);
  if (deq.size() != 4) {
    std::puts("NG 5");
    return;
  }

  std::puts("OK");
}
