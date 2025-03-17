


#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

struct test1 {
  int id;

  test1(const int _id=-1) : id(_id) { }

  friend bool operator==(const test1 &obj1, const int xid)     { return (obj1.id == xid); }
  friend bool operator==(const int xid,     const test1 &obj1) { return (xid     == obj1.id); }
};

struct test2 {
  int id;

  test2(const int _id=-1) : id(_id) { }

  friend bool operator==(const test2 &obj1, const int xid)     { return (obj1.id == xid); }
  friend bool operator==(const int xid,     const test2 &obj1) { return (xid     == obj1.id); }
  friend bool operator==(const test1 &obj1, const test2 obj2)  { return (obj1.id == obj2.id); }
  friend bool operator==(const test2 &obj2, const test1 &obj1) { return (obj2.id == obj1.id); }
};


int func2()
{
  test1 obj[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
  vector<test2> value;
  value.push_back(test2(5));
  value.push_back(test2(6));
  value.push_back(test2(7));
  value.push_back(test2(8));
  value.push_back(test2(9));
  value.push_back(test2(10));
  value.push_back(test2(11));
  value.push_back(test2(12));
  value.push_back(test2(13));
  value.push_back(test2(14));
  
  test1* ret;
  ret = find_first_of(&obj[0], &obj[10], value.begin(), value.end());
  bool ok = (ret == &obj[5]);
  cout << "func2 " << (ok ? "OK" : "NG") << endl;
  return (int)(ok ? 0 : 1);
}

int main()
{
  int result = 0;
  result += func2();
  return result;
}
