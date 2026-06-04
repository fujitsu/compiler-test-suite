#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
float v1 (unsigned short, signed int);
float (*v2) (unsigned short, signed int) = v1;
extern struct ss1 v3 (signed int, union uu0, struct ss0);
extern struct ss1 (*v4) (signed int, union uu0, struct ss0);
extern unsigned short v5 (union uu1);
extern unsigned short (*v6) (union uu1);
extern signed char v7 (float, union uu1, float, union uu0);
extern signed char (*v8) (float, union uu1, float, union uu0);
extern signed short v9 (unsigned char, union uu0);
extern signed short (*v10) (unsigned char, union uu0);
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v28 = { 38877, 7920952, 45254627U, 17U, };
double v27 = 2135034309242767002.34075;
unsigned short v26 = 41874;

float v1 (unsigned short v29, signed int v30)
{
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
{
for (;;) {
signed short v33 = 29310;
signed int v32 = -84432944;
signed short v31 = 14128;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v34;
union uu0 v35;
signed short v36;
v34 = 166 + 64;
v35.f0 = 99;
v36 = (*v10) (v34, v35);
history[history_index++] = (int)v36;
}
break;
case 4: 
{
float v37;
union uu1 v38;
float v39;
union uu0 v40;
signed char v41;
v37 = -569855822.40951F;
v38.f2 = 163;
v39 = -1814000337.37650F;
v40.f3 = 76;
v41 = (*v8) (v37, v38, v39, v40);
history[history_index++] = (int)v41;
}
break;
case 6: 
{
unsigned char v42;
union uu0 v43;
signed short v44;
v42 = 92 + 74;
v43.f3 = 59;
v44 = (*v10) (v42, v43);
history[history_index++] = (int)v44;
}
break;
case 8: 
return 812344352.120F;
case 9: 
return 1948134761.59067F;
default: abort ();
}
}
}
}
