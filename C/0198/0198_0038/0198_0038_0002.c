#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
struct ss0 v1 (unsigned int, struct ss0);
struct ss0 (*v2) (unsigned int, struct ss0) = v1;
extern union uu1 v3 (struct ss0, union uu0, signed int, union uu0);
extern union uu1 (*v4) (struct ss0, union uu0, signed int, union uu0);
extern signed int v5 (signed short, unsigned int);
extern signed int (*v6) (signed short, unsigned int);
struct ss0 v7 (unsigned int, float, unsigned short, float);
struct ss0 (*v8) (unsigned int, float, unsigned short, float) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v45 = 2868595854U;
unsigned short v44 = 45952;
float v43 = -1496950062.8461F;

struct ss0 v7 (unsigned int v46, float v47, unsigned short v48, float v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 3542640347U;
float v51 = 170338586.893F;
struct ss0 v50 = { 451098U, 634403U, 4455, };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

struct ss0 v1 (unsigned int v53, struct ss0 v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54.f2;
history[history_index++] = (int)v54.f1;
history[history_index++] = (int)v54.f0;
{
for (;;) {
signed int v57 = 1899901323;
float v56 = -129531658.21847F;
float v55 = 472352557.54608F;
trace++;
switch (trace)
{
case 0: 
{
signed short v58;
unsigned int v59;
signed int v60;
v58 = -10208 + 21331;
v59 = v53 - v53;
v60 = v5 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 2: 
{
signed char v61;
v61 = (*v10) ();
history[history_index++] = (int)v61;
}
break;
case 4: 
{
signed char v62;
v62 = (*v10) ();
history[history_index++] = (int)v62;
}
break;
case 6: 
{
struct ss0 v63;
v63.f2 = 398923U;
v63.f1 = 80038U;
v63.f0 = 42524;
return v63;
}
case 8: 
{
signed char v64;
v64 = (*v10) ();
history[history_index++] = (int)v64;
}
break;
case 10: 
{
struct ss0 v65;
v65.f2 = 976722U;
v65.f1 = 516665U;
v65.f0 = 64378;
return v65;
}
case 12: 
{
struct ss0 v66;
v66.f2 = 445282U;
v66.f1 = 718903U;
v66.f0 = 39643;
return v66;
}
default: abort ();
}
}
}
}
