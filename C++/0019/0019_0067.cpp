#include <cassert>

template <class T> extern T vt;

template <> int vt<int> = 456;

void test() { assert(vt<int> == 456); }

int main() { test(); }
