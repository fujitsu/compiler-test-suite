#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned int v1 (unsigned int, float);
unsigned int (*v2) (unsigned int, float) = v1;
extern unsigned int v3 (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned int (*v4) (unsigned int, unsigned char, unsigned int, unsigned short);
unsigned short v5 (float, struct ss0);
unsigned short (*v6) (float, struct ss0) = v5;
union uu1 v7 (signed int, unsigned int, union uu1);
union uu1 (*v8) (signed int, unsigned int, union uu1) = v7;
extern union uu0 v9 (unsigned char);
extern union uu0 (*v10) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v71 = 14690;
double v70 = -2811995876374631683.2951;
signed int v69 = -1458282908;

union uu1 v7 (signed int v72, unsigned int v73, union uu1 v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74.f2;
{
for (;;) {
unsigned short v77 = 35303;
double v76 = -2479338484133684073.27237;
signed char v75 = 33;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (float v78, struct ss0 v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79.f2;
history[history_index++] = (int)v79.f1;
history[history_index++] = (int)v79.f0;
{
for (;;) {
struct ss0 v82 = { 470052U, 413791U, 57824, };
signed char v81 = -71;
signed short v80 = -11645;
trace++;
switch (trace)
{
case 2: 
return 41574;
default: abort ();
}
}
}
}

unsigned int v1 (unsigned int v83, float v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
union uu1 v87 = {-535748696 };
union uu0 v86 = {2696728068U };
struct ss0 v85 = { 916141U, 36232U, 32184, };
trace++;
switch (trace)
{
case 0: 
{
unsigned int v88;
unsigned char v89;
unsigned int v90;
unsigned short v91;
unsigned int v92;
v88 = 967663722U - v83;
v89 = 87 - 249;
v90 = 2350387175U - 1828963743U;
v91 = 31944 - 23636;
v92 = (*v4) (v88, v89, v90, v91);
history[history_index++] = (int)v92;
}
break;
case 18: 
return v83;
default: abort ();
}
}
}
}
