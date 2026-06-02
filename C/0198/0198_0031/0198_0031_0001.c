#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed char v1 (double);
extern signed char (*v2) (double);
extern float v3 (signed int);
extern float (*v4) (signed int);
float v5 (unsigned short);
float (*v6) (unsigned short) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed short v9 (float, signed char, union uu0, signed char);
extern signed short (*v10) (float, signed char, union uu0, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v34 = 24600;
struct ss0 v33 = { 898243U, 369301U, 2182, };
signed char v32 = -102;

float v5 (unsigned short v35)
{
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 60817;
double v37 = -5419067353488056250.2996;
unsigned int v36 = 2803461625U;
trace++;
switch (trace)
{
case 2: 
{
signed int v39;
v39 = (*v8) ();
history[history_index++] = (int)v39;
}
break;
case 4: 
{
signed int v40;
v40 = (*v8) ();
history[history_index++] = (int)v40;
}
break;
case 6: 
return 452477049.65168F;
default: abort ();
}
}
}
}
