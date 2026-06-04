#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss0 v1 (unsigned char, signed char);
extern struct ss0 (*v2) (unsigned char, signed char);
extern float v3 (unsigned int, signed char, union uu0, unsigned int);
extern float (*v4) (unsigned int, signed char, union uu0, unsigned int);
extern void v5 (float, union uu0, float, struct ss0);
extern void (*v6) (float, union uu0, float, struct ss0);
signed int v7 (union uu0);
signed int (*v8) (union uu0) = v7;
struct ss1 v9 (signed int);
struct ss1 (*v10) (signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed char v55 = -121;
float v54 = 287421465.63814F;
signed int v53 = 551478239;

struct ss1 v9 (signed int v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
struct ss1 v59 = { 29070, -19207503, 56192170U, 22U, };
signed char v58 = 101;
unsigned char v57 = 10;
trace++;
switch (trace)
{
case 3: 
{
struct ss1 v60;
v60.f3 = 404;
v60.f2 = 10411673;
v60.f1 = 55509761U;
v60.f0 = 425U;
return v60;
}
case 7: 
{
struct ss1 v61;
v61.f3 = 53301;
v61.f2 = 45654691;
v61.f1 = 61175455U;
v61.f0 = 52U;
return v61;
}
default: abort ();
}
}
}
}

signed int v7 (union uu0 v62)
{
history[history_index++] = (int)v62.f3;
{
for (;;) {
double v65 = -5033748610157984494.55619;
union uu1 v64 = {-2030051962 };
unsigned int v63 = 400613722U;
trace++;
switch (trace)
{
case 1: 
return 248208962;
case 5: 
return -1689881064;
case 10: 
{
float v66;
union uu0 v67;
float v68;
struct ss0 v69;
v66 = -331728253.56703F;
v67.f3 = 97;
v68 = 308592836.42117F;
v69.f2 = 743601U;
v69.f1 = 850421U;
v69.f0 = 7788;
v5 (v66, v67, v68, v69);
}
break;
case 12: 
return -161698746;
default: abort ();
}
}
}
}
