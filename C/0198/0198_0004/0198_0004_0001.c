#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned char v1 (double);
extern unsigned char (*v2) (double);
extern void v3 (float);
extern void (*v4) (float);
signed short v5 (void);
signed short (*v6) (void) = v5;
signed int v7 (signed char, unsigned short, union uu0);
signed int (*v8) (signed char, unsigned short, union uu0) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v24 = { 219774U, 333102U, 37302, };
unsigned char v23 = 167;
signed char v22 = -12;

signed int v7 (signed char v25, unsigned short v26, union uu0 v27)
{
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
history[history_index++] = (int)v27.f3;
{
for (;;) {
unsigned int v30 = 1166864426U;
unsigned char v29 = 69;
signed int v28 = 1813889631;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
union uu0 v33 = {3809899863U };
union uu0 v32 = {359025400U };
float v31 = 107439971.6167F;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v34;
v34 = v9 ();
history[history_index++] = (int)v34;
}
break;
case 6: 
return -21347;
case 8: 
{
unsigned short v35;
v35 = (*v10) ();
history[history_index++] = (int)v35;
}
break;
case 10: 
{
unsigned short v36;
v36 = (*v10) ();
history[history_index++] = (int)v36;
}
break;
case 12: 
return 18276;
case 14: 
return -5624;
default: abort ();
}
}
}
}
