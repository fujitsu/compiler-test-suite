#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern float v1 (unsigned short, signed int);
extern float (*v2) (unsigned short, signed int);
extern struct ss1 v3 (signed int, union uu0, struct ss0);
extern struct ss1 (*v4) (signed int, union uu0, struct ss0);
unsigned short v5 (union uu1);
unsigned short (*v6) (union uu1) = v5;
signed char v7 (float, union uu1, float, union uu0);
signed char (*v8) (float, union uu1, float, union uu0) = v7;
signed short v9 (unsigned char, union uu0);
signed short (*v10) (unsigned char, union uu0) = v9;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v47 = 65351;
union uu1 v46 = {-1276147871 };
float v45 = -24001971.14425F;

signed short v9 (unsigned char v48, union uu0 v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49.f3;
{
for (;;) {
double v52 = 5883344114625378568.59966;
double v51 = 1981591222290439603.49712;
unsigned int v50 = 1875586558U;
trace++;
switch (trace)
{
case 1: 
{
signed int v53;
union uu0 v54;
struct ss0 v55;
struct ss1 v56;
v53 = -1326054309 - -659778448;
v54.f3 = 26;
v55.f2 = 856966U;
v55.f1 = 44942U;
v55.f0 = 27724;
v56 = (*v4) (v53, v54, v55);
history[history_index++] = (int)v56.f3;
history[history_index++] = (int)v56.f2;
history[history_index++] = (int)v56.f1;
history[history_index++] = (int)v56.f0;
}
break;
case 3: 
return -31214;
case 7: 
return -1688;
default: abort ();
}
}
}
}

signed char v7 (float v57, union uu1 v58, float v59, union uu0 v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58.f2;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60.f3;
{
for (;;) {
signed int v63 = -193516357;
double v62 = -2892793365060154013.6304;
struct ss0 v61 = { 872489U, 814306U, 59363, };
trace++;
switch (trace)
{
case 5: 
return -125;
default: abort ();
}
}
}
}

unsigned short v5 (union uu1 v64)
{
history[history_index++] = (int)v64.f2;
{
for (;;) {
struct ss1 v67 = { 5315, 1861823, 28765933U, 131U, };
signed short v66 = 427;
unsigned int v65 = 3500049344U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
