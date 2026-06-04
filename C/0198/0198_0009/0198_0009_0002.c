#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v1 (struct ss1, struct ss1, struct ss1);
extern signed short (*v2) (struct ss1, struct ss1, struct ss1);
void v7 (double, signed int);
void (*v8) (double, signed int) = v7;
extern void v9 (double, signed int, unsigned short, signed short);
extern void (*v10) (double, signed int, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v65 = 4043;
signed int v64 = 124273057;
unsigned int v63 = 2185227679U;

void v7 (double v66, signed int v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
union uu0 v70 = {364631889U };
float v69 = 1773160377.54203F;
struct ss1 v68 = { 36114, 3381642, 58114406U, 307U, };
trace++;
switch (trace)
{
case 8: 
{
struct ss1 v71;
struct ss1 v72;
struct ss1 v73;
signed short v74;
v71.f3 = 59195;
v71.f2 = 29870827;
v71.f1 = 13379610U;
v71.f0 = 183U;
v72.f3 = 43151;
v72.f2 = 6754317;
v72.f1 = 57904573U;
v72.f0 = 208U;
v73.f3 = 2685;
v73.f2 = 5932693;
v73.f1 = 52592027U;
v73.f0 = 167U;
v74 = (*v2) (v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
