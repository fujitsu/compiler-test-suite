#include "public3/004.h"


enum class E1;
enum class E2 : int;
enum class E3 : short;
enum E4 : int;
enum E5 : short;


enum class E1;
enum class E2 : int;
enum class E3 : short;
enum E4 : int;
enum E5 : short;


E1 b1;
E2 b2;
E3 b3;
E4 b4;
E5 b5;


enum E1 a1;
enum E2 a2;
enum E3 a3;
enum E4 a4;
enum E5 a5;


enum class E1 { e11, e12 };
enum class E2 : int { e21, e22 };
enum class E3 : short {e31, e32 };
enum E4 : int { e41, e42 };
enum E5 : short { e51, e52 };


enum class E1;
enum class E2 : int;
enum class E3 : short;
enum E4 : int;
enum E5 : short;

void test() {}

PASS_CASE_MAIN_FUNCTION
