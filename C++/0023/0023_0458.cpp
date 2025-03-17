#include<cassert>
#include<tuple>

int main () 
{
   { 
    typedef std::pair<int, char> T0;;
    typedef std::tuple<int,char> T1;
    constexpr T0 t0{2,'a'};
    constexpr T1 t1 {t0};
    assert(std::get<0>(t1) == 2&&std::get<1>(t1) == 'a');
    }
   {
    typedef std::pair<char, char> T3;;
    typedef std::tuple<char,char> T4;
    constexpr T3 t3('w','a');
    constexpr T4 t4 (t3);
    assert(std::get<0>(t4) == 'w'&&std::get<1>(t4) == 'a');
   }
}