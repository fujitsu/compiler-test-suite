#include "public2/004.h"

namespace N
{
    namespace M
    {
        
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
    }
}



N::M::E1 b1;
N::M::E2 b2;
N::M::E3 b3;
N::M::E4 b4;
N::M::E5 b5;


enum N::M::E1 a1;
enum N::M::E2 a2;
enum N::M::E3 a3;
enum N::M::E4 a4;
enum N::M::E5 a5;


enum class N::M::E1 { e11, e12 };
enum class N::M::E2 : int { e21, e22 };
enum class N::M::E3 : short {e31, e32 };
enum N::M::E4 : int { e41, e42 };
enum N::M::E5 : short { e51, e52 };

void test() {}

PASS_CASE_MAIN_FUNCTION
