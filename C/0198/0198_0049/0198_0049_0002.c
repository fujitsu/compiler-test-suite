#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned short v1 (float, struct ss0);
unsigned short (*v2) (float, struct ss0) = v1;
extern signed short v3 (float, unsigned int, struct ss1);
extern signed short (*v4) (float, unsigned int, struct ss1);
extern struct ss1 v5 (signed int);
extern struct ss1 (*v6) (signed int);
extern signed char v7 (union uu1);
extern signed char (*v8) (union uu1);
extern unsigned int v9 (signed short);
extern unsigned int (*v10) (signed short);
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v67 = { 60248, 11987894, 42539889U, 96U, };
float v66 = 2029492973.52501F;
struct ss1 v65 = { 18354, 7248218, 37029851U, 73U, };

unsigned short v1 (float v68, struct ss0 v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69.f2;
history[history_index++] = (int)v69.f1;
history[history_index++] = (int)v69.f0;
{
for (;;) {
struct ss1 v72 = { 38010, 11812615, 1596396U, 36U, };
signed int v71 = -1764207669;
union uu0 v70 = {1037689561U };
trace++;
switch (trace)
{
case 0: 
{
signed int v73;
struct ss1 v74;
v73 = v71 - v71;
v74 = (*v6) (v73);
history[history_index++] = (int)v74.f3;
history[history_index++] = (int)v74.f2;
history[history_index++] = (int)v74.f1;
history[history_index++] = (int)v74.f0;
}
break;
case 18: 
return 65150;
default: abort ();
}
}
}
}
