#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
union uu0 v1 (struct ss0, double);
union uu0 (*v2) (struct ss0, double) = v1;
static struct ss0 v3 (union uu1);
static struct ss0 (*v4) (union uu1) = v3;
extern signed char v5 (unsigned int, struct ss1);
extern signed char (*v6) (unsigned int, struct ss1);
extern unsigned int v9 (unsigned char, double, union uu1, struct ss1);
extern unsigned int (*v10) (unsigned char, double, union uu1, struct ss1);
extern int history[];
extern int history_index;
extern int trace;
union uu0 v62 = {3033511800U };
union uu1 v61 = {939294567 };
unsigned char v60 = 152;

static struct ss0 v3 (union uu1 v63)
{
history[history_index++] = (int)v63.f2;
{
for (;;) {
unsigned short v66 = 33188;
unsigned short v65 = 24663;
float v64 = 389496734.48678F;
trace++;
switch (trace)
{
case 1: 
{
struct ss0 v67;
v67.f2 = 883670U;
v67.f1 = 928153U;
v67.f0 = v66;
return v67;
}
default: abort ();
}
}
}
}

union uu0 v1 (struct ss0 v68, double v69)
{
history[history_index++] = (int)v68.f2;
history[history_index++] = (int)v68.f1;
history[history_index++] = (int)v68.f0;
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = 17925;
unsigned int v71 = 1989851805U;
unsigned short v70 = 35324;
trace++;
switch (trace)
{
case 0: 
{
union uu1 v73;
struct ss0 v74;
v73.f2 = 187;
v74 = v3 (v73);
history[history_index++] = (int)v74.f2;
history[history_index++] = (int)v74.f1;
history[history_index++] = (int)v74.f0;
}
break;
case 2: 
{
unsigned int v75;
struct ss1 v76;
signed char v77;
v75 = 2143454667U - 1976205696U;
v76.f3 = v70;
v76.f2 = -58806737;
v76.f1 = 59347367U;
v76.f0 = 71U;
v77 = (*v6) (v75, v76);
history[history_index++] = (int)v77;
}
break;
case 18: 
{
union uu0 v78;
v78.f3 = 17;
return v78;
}
default: abort ();
}
}
}
}
