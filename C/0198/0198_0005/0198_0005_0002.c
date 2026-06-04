#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
struct ss0 v5 (void);
struct ss0 (*v6) (void) = v5;
extern union uu0 v7 (unsigned int, float, unsigned short, union uu0);
extern union uu0 (*v8) (unsigned int, float, unsigned short, union uu0);
extern signed int v9 (signed short);
extern signed int (*v10) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v54 = -1020717693;
unsigned short v53 = 45676;
signed short v52 = -23506;

struct ss0 v5 (void)
{
{
for (;;) {
double v57 = -4242777127084060564.62052;
float v56 = 1040533508.22505F;
struct ss0 v55 = { 75242U, 806518U, 5522, };
trace++;
switch (trace)
{
case 11: 
{
struct ss0 v58;
v58.f2 = 938543U;
v58.f1 = 323285U;
v58.f0 = 60835;
return v58;
}
default: abort ();
}
}
}
}
