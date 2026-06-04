#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
struct ss0 v1 (signed char, union uu1, signed int, signed char);
struct ss0 (*v2) (signed char, union uu1, signed int, signed char) = v1;
static signed int v3 (signed char);
static signed int (*v4) (signed char) = v3;
extern union uu0 v5 (signed int, double, unsigned short);
extern union uu0 (*v6) (signed int, double, unsigned short);
extern unsigned char v7 (unsigned short, signed char, signed int, unsigned int);
extern unsigned char (*v8) (unsigned short, signed char, signed int, unsigned int);
extern float v9 (signed char, struct ss0);
extern float (*v10) (signed char, struct ss0);
extern int history[];
extern int history_index;
extern int trace;
signed char v56 = 48;
double v55 = -394027399178557647.29783;
signed int v54 = 988508106;

static signed int v3 (signed char v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
signed short v60 = -10951;
union uu0 v59 = {4131233136U };
double v58 = 9191785447045006118.30817;
trace++;
switch (trace)
{
case 2: 
return -1548512806;
default: abort ();
}
}
}
}

struct ss0 v1 (signed char v61, union uu1 v62, signed int v63, signed char v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62.f2;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed char v67 = 75;
float v66 = -1263595508.42862F;
unsigned int v65 = 228271353U;
trace++;
switch (trace)
{
case 0: 
{
struct ss0 v68;
v68.f2 = 869206U;
v68.f1 = 639750U;
v68.f0 = 26955;
return v68;
}
case 1: 
{
signed char v69;
signed int v70;
v69 = v61 - -126;
v70 = v3 (v69);
history[history_index++] = (int)v70;
}
break;
case 3: 
{
struct ss0 v71;
v71.f2 = 934570U;
v71.f1 = 709975U;
v71.f0 = 42977;
return v71;
}
case 4: 
{
signed char v72;
struct ss0 v73;
float v74;
v72 = 122 - v64;
v73.f2 = 991933U;
v73.f1 = 409804U;
v73.f0 = 57860;
v74 = (*v10) (v72, v73);
history[history_index++] = (int)v74;
}
break;
case 14: 
{
struct ss0 v75;
v75.f2 = 438919U;
v75.f1 = 937469U;
v75.f0 = 41892;
return v75;
}
default: abort ();
}
}
}
}
