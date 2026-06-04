#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
struct ss0 v1 (float);
struct ss0 (*v2) (float) = v1;
extern struct ss1 v5 (void);
extern struct ss1 (*v6) (void);
signed int v7 (unsigned int, union uu1, signed char);
signed int (*v8) (unsigned int, union uu1, signed char) = v7;
extern union uu0 v9 (float);
extern union uu0 (*v10) (float);
extern int history[];
extern int history_index;
extern int trace;
float v39 = -2016241775.19811F;
unsigned int v38 = 1203803267U;
signed int v37 = 175038042;

signed int v7 (unsigned int v40, union uu1 v41, signed char v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41.f2;
history[history_index++] = (int)v42;
{
for (;;) {
struct ss0 v45 = { 296057U, 587931U, 40896, };
unsigned char v44 = 124;
signed char v43 = 79;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

struct ss0 v1 (float v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
struct ss0 v49 = { 263413U, 439496U, 11798, };
signed int v48 = 120977307;
signed char v47 = 5;
trace++;
switch (trace)
{
case 0: 
{
struct ss0 v50;
v50.f2 = 182340U;
v50.f1 = 862885U;
v50.f0 = 49251;
return v50;
}
case 1: 
{
struct ss1 v51;
v51 = v5 ();
history[history_index++] = (int)v51.f3;
history[history_index++] = (int)v51.f2;
history[history_index++] = (int)v51.f1;
history[history_index++] = (int)v51.f0;
}
break;
case 13: 
{
struct ss0 v52;
v52.f2 = 487415U;
v52.f1 = 928039U;
v52.f0 = 2600;
return v52;
}
default: abort ();
}
}
}
}
