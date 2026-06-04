#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern unsigned int v5 (struct ss0);
extern unsigned int (*v6) (struct ss0);
extern signed short v7 (signed char, signed char, double);
extern signed short (*v8) (signed char, signed char, double);
extern int history[];
extern int history_index;
extern int trace;
union uu0 v35 = {215691669U };
unsigned char v34 = 187;
signed short v33 = 27719;

unsigned int v3 (void)
{
{
for (;;) {
union uu0 v38 = {2782789864U };
union uu1 v37 = {-864157796 };
struct ss0 v36 = { 848109U, 730128U, 60966, };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned char v41 = 90;
unsigned int v40 = 3711942846U;
signed short v39 = 29049;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v42;
v42 = (*v2) ();
history[history_index++] = (int)v42;
}
break;
case 1: 
return 45724;
case 2: 
{
unsigned short v43;
v43 = v1 ();
history[history_index++] = (int)v43;
}
break;
case 3: 
{
struct ss0 v44;
unsigned int v45;
v44.f2 = 33552U;
v44.f1 = 3505U;
v44.f0 = 46432;
v45 = v5 (v44);
history[history_index++] = (int)v45;
}
break;
case 5: 
{
struct ss0 v46;
unsigned int v47;
v46.f2 = 877544U;
v46.f1 = 244874U;
v46.f0 = 38764;
v47 = (*v6) (v46);
history[history_index++] = (int)v47;
}
break;
case 13: 
return 29009;
case 14: 
return 36551;
default: abort ();
}
}
}
}
