#include <cassert>

void test() { assert(8 == 0b1000 && 4 == 0B0100); }

int main() { test(); }
