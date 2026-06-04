#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern void v3 (signed short, signed char);
extern void (*v4) (signed short, signed char);
union uu0 v7 (union uu1, unsigned short, signed char, struct ss0);
union uu0 (*v8) (union uu1, unsigned short, signed char, struct ss0) = v7;
struct ss1 v9 (void);
struct ss1 (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed short v36 = -8639;
union uu0 v35 = {1020613105U };
union uu0 v34 = {3127929662U };

struct ss1 v9 (void)
{
{
for (;;) {
struct ss1 v39 = { 16786, -41456174, 6379819U, 156U, };
signed char v38 = 2;
union uu1 v37 = {987590192 };
trace++;
switch (trace)
{
case 3: 
{
signed short v40;
signed char v41;
v40 = 12353 + -8625;
v41 = 117 + 122;
v3 (v40, v41);
}
break;
case 7: 
{
signed short v42;
signed char v43;
v42 = -31328 + 3755;
v43 = v38 - v38;
v3 (v42, v43);
}
break;
case 9: 
{
signed short v44;
signed char v45;
v44 = 11925 + 29216;
v45 = v38 + v38;
(*v4) (v44, v45);
}
break;
case 13: 
{
struct ss1 v46;
v46.f3 = 40401;
v46.f2 = 41020375;
v46.f1 = 58422401U;
v46.f0 = 373U;
return v46;
}
default: abort ();
}
}
}
}

union uu0 v7 (union uu1 v47, unsigned short v48, signed char v49, struct ss0 v50)
{
history[history_index++] = (int)v47.f2;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50.f2;
history[history_index++] = (int)v50.f1;
history[history_index++] = (int)v50.f0;
{
for (;;) {
union uu1 v53 = {-1002552321 };
union uu0 v52 = {2822036522U };
signed int v51 = -1433269060;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
