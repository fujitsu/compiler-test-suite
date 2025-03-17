#include <iostream>

class Singleton {
private:
  int m_ival;
  double m_dval;
  std::string m_str;

  Singleton() {}

public:
  static Singleton &getInstance() {
    static Singleton instance;
    return instance;
  }

  void setInt(int ival) { m_ival = ival; }
  int getInt() const { return m_ival; }

  void setDouble(double dval) { m_dval = dval; }
  double getDouble() const { return m_dval; }

  void setString(std::string str) { m_str = str; }
  std::string getString() const { return m_str; }

  bool isSame(int i, double d, std::string str) {
    if (m_ival != i || m_dval != d || m_str != str) {
      return false;
    }
    return true;
  }
};

int main() {
  Singleton obj1 = Singleton::getInstance();
  Singleton obj2 = Singleton::getInstance();

  obj1.setInt(10);
  obj1.setDouble(2.4);
  obj1.setString("obj1");
  obj2.setInt(3);
  obj2.setDouble(1.3);
  obj1.setString("string");

  if (obj1.isSame(obj2.getInt(), obj2.getDouble(), obj2.getString())) {
    std::cout << "NG" << std::endl;
  } else {
    std::cout << "OK" << std::endl;
  }

  return 0;
}
