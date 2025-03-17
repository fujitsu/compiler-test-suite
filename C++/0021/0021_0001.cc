#include <cstdio>

class C101 {
public:
  C101() { puts("priority 101 constructor called"); }
};

class C65535 {
public:
  C65535() { puts("priority 65535 constructor called"); }
};

class C65534 {
public:
  C65534() { puts("priority 65534 constructor called"); }
};

class C65525 {
public:
  C65525() { puts("priority 65525 constructor called"); }
};

class C65435 {
public:
  C65435() { puts("priority 65435 constructor called"); }
};

class C64535 {
public:
  C64535() { puts("priority 64535 constructor called"); }
};

class C55535 {
public:
  C55535() { puts("priority 55535 constructor called"); }
};

C101 obj1 __attribute__((init_priority(101)));
C65535 obj2 __attribute__((init_priority(65535)));
C65534 obj3 __attribute__((init_priority(65534)));
C65525 obj4 __attribute__((init_priority(65525)));
C65435 obj5 __attribute__((init_priority(65435)));
C64535 obj6 __attribute__((init_priority(64535)));
C55535 obj7 __attribute__((init_priority(55535)));

int main() { return 0; }
