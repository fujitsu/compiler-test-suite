#include "004.h"

#define ALIGNMENT 128

struct alignas(ALIGNMENT) X;
struct alignas(ALIGNMENT) X { char __; };

void test() {}

PASS_CASE_MAIN_FUNCTION
