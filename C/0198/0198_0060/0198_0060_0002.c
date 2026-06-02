#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed int v1 (signed int, unsigned short, signed char);
signed int (*v2) (signed int, unsigned short, signed char) = v1;
extern struct ss1 v3 (union uu1, signed char);
extern struct ss1 (*v4) (union uu1, signed char);
extern void v7 (struct ss1, struct ss0, unsigned int);
extern void (*v8) (struct ss1, struct ss0, unsigned int);
extern signed int v9 (unsigned int, struct ss0, signed char);
extern signed int (*v10) (unsigned int, struct ss0, signed char);
extern int history[];
extern int history_index;
extern int trace;
union uu1 v79 = {-1965485411 };
signed int v78 = -1184814890;
unsigned int v77 = 3961831047U;

signed int v1 (signed int v80, unsigned short v81, signed char v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = 2083451497;
struct ss0 v84 = { 667743U, 56853U, 28125, };
float v83 = -2029284644.42897F;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v86;
struct ss0 v87;
signed char v88;
signed int v89;
v86 = 3191640559U + 1649601574U;
v87.f2 = 157848U;
v87.f1 = 537287U;
v87.f0 = v81;
v88 = -18 + v82;
v89 = (*v10) (v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 7: 
return v85;
case 18: 
return -190766737;
default: abort ();
}
}
}
}
