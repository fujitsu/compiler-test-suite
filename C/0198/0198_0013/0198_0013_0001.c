#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned int v1 (unsigned char, signed int, signed char);
unsigned int (*v2) (unsigned char, signed int, signed char) = v1;
extern signed int v3 (signed char, double, signed char);
extern signed int (*v4) (signed char, double, signed char);
extern signed short v5 (signed short, union uu0);
extern signed short (*v6) (signed short, union uu0);
extern signed int v7 (unsigned int);
extern signed int (*v8) (unsigned int);
extern signed int v9 (signed char, unsigned short, struct ss0);
extern signed int (*v10) (signed char, unsigned short, struct ss0);
extern int history[];
extern int history_index;
extern int trace;
signed int v43 = -2114987552;
union uu1 v42 = {153282683 };
double v41 = -4183679204251094127.8953;

unsigned int v1 (unsigned char v44, signed int v45, signed char v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
struct ss0 v49 = { 827322U, 948809U, 56959, };
unsigned int v48 = 2593387590U;
union uu1 v47 = {-1050052404 };
trace++;
switch (trace)
{
case 0: 
{
signed char v50;
unsigned short v51;
struct ss0 v52;
signed int v53;
v50 = -79 + v46;
v51 = 63568 + 64180;
v52.f2 = 601800U;
v52.f1 = 884292U;
v52.f0 = 58130;
v53 = (*v10) (v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 2: 
{
unsigned int v54;
signed int v55;
v54 = 1177699958U + v48;
v55 = (*v8) (v54);
history[history_index++] = (int)v55;
}
break;
case 16: 
return 570416833U;
default: abort ();
}
}
}
}
