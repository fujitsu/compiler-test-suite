#include <iostream>

class truck;

class car {
  int passengers;
  int speed;

public:
  car(int p, int s) {
    passengers = p;
    speed = s;
  }

  friend int sp_greater(car, truck);
};

class truck {
  int weight;
  int speed;

public:
  truck(int w, int s) {
    weight = w;
    speed = s;
  }

  friend int sp_greater(car, truck);
};

int sp_greater(car c, truck t) { return (c.speed - t.speed); }

int main() {
  int t;
  car c1(6, 220);
  truck t1(30000, 140);

  t = sp_greater(c1, t1);
  if (t < 0) {
    std::cout << "NG" << std::endl;
  } else if (t == 0) {
    std::cout << "NG" << std::endl;
  } else {
    std::cout << "OK" << std::endl;
  }
  return 0;
}
