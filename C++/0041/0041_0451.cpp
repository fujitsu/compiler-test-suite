#include "public3/004.h"

enum E
{
    e1 = 1, e2, e3, e4, e5
};

struct SI1 {                    operator int() { return 1;} } si1;
struct SI2 {           explicit operator int() { return 2;} } si2;
struct SI3 {          constexpr operator int() { return 3;} } si3;
struct SI4 { explicit constexpr operator int() { return 4;} } si4;

struct SE1 {                    operator E() { return e1;} } se1;
struct SE2 {           explicit operator E() { return e2;} } se2;
struct SE3 {          constexpr operator E() { return e3;} } se3;
struct SE4 { explicit constexpr operator E() { return e4;} } se4;

void test()
{
    {
        char *p1 = new char[si1]; 
        
        char *p3 = new char[(int)si2]; 
        char *p4 = new char[int(si2)]; 
        char *p5 = new char[static_cast<int>(si2)]; 
        
        char *p6 = new char[se1]; 
        
        char *p8 = new char[(E)se2]; 
        char *p9 = new char[E(se2)]; 
        char *p10 = new char[static_cast<E>(se2)]; 
    }
    
    {
        char (*p1)[3] = new char[si1][si3]; 
        
        char (*p3)[4] = new char[si1][(int)si4]; 
        char (*p4)[4] = new char[si1][int(si4)]; 
        char (*p5)[4] = new char[si1][static_cast<int>(si4)]; 
        char (*p6)[3] = new char[se1][se3]; 
        
        char (*p8)[4] = new char[si1][(E)se4]; 
        char (*p9)[4] = new char[si1][E(se4)]; 
        char (*p10)[4] = new char[si1][static_cast<E>(se4)]; 
    }
}

PASS_CASE_MAIN_FUNCTION
