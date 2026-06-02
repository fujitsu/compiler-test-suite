#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned int v1 (unsigned short, union uu0, signed int);
extern unsigned int (*v2) (unsigned short, union uu0, signed int);
struct ss0 v9 (union uu0, signed char);
struct ss0 (*v10) (union uu0, signed char) = v9;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v60 = 174;
union uu0 v59 = {1230631428U };
float v58 = -13550320.40391F;

struct ss0 v9 (union uu0 v61, signed char v62)
{
history[history_index++] = (int)v61.f3;
history[history_index++] = (int)v62;
{
for (;;) {
signed int v65 = 700757903;
struct ss1 v64 = { 12755, -62405156, 20416845U, 175U, };
double v63 = 3097146111477363762.64153;
trace++;
switch (trace)
{
case 7: 
{
struct ss0 v66;
v66.f2 = 764189U;
v66.f1 = 396839U;
v66.f0 = 22685;
return v66;
}
default: abort ();
}
}
}
}
