#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
struct ss1 v1 (unsigned int);
struct ss1 (*v2) (unsigned int) = v1;
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern unsigned int v5 (double, unsigned char);
extern unsigned int (*v6) (double, unsigned char);
extern void v9 (float);
extern void (*v10) (float);
extern int history[];
extern int history_index;
extern int trace;
signed char v64 = -45;
union uu1 v63 = {964651671 };
union uu0 v62 = {1089481101U };

unsigned int v3 (void)
{
{
for (;;) {
unsigned int v67 = 2057592630U;
unsigned int v66 = 1635850787U;
double v65 = -4292982110403779177.55307;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

struct ss1 v1 (unsigned int v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
double v71 = 6183411612915213135.8990;
double v70 = 3844696229387441889.13088;
struct ss0 v69 = { 738035U, 658004U, 59627, };
trace++;
switch (trace)
{
case 0: 
{
float v72;
v72 = -806032744.19632F;
v9 (v72);
}
break;
case 20: 
{
struct ss1 v73;
v73.f3 = 12050;
v73.f2 = 14046781;
v73.f1 = 26679188U;
v73.f0 = 200U;
return v73;
}
default: abort ();
}
}
}
}
