#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern union uu1 v1 (struct ss1, signed char, signed char, unsigned short);
extern union uu1 (*v2) (struct ss1, signed char, signed char, unsigned short);
extern signed short v3 (void);
extern signed short (*v4) (void);
signed char v5 (unsigned char);
signed char (*v6) (unsigned char) = v5;
unsigned char v7 (unsigned char);
unsigned char (*v8) (unsigned char) = v7;
signed int v9 (struct ss0, struct ss1, unsigned short, float);
signed int (*v10) (struct ss0, struct ss1, unsigned short, float) = v9;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v26 = 3;
struct ss0 v25 = { 354696U, 928778U, 8380, };
union uu1 v24 = {-1965557247 };

signed int v9 (struct ss0 v27, struct ss1 v28, unsigned short v29, float v30)
{
history[history_index++] = (int)v27.f2;
history[history_index++] = (int)v27.f1;
history[history_index++] = (int)v27.f0;
history[history_index++] = (int)v28.f3;
history[history_index++] = (int)v28.f2;
history[history_index++] = (int)v28.f1;
history[history_index++] = (int)v28.f0;
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
{
for (;;) {
unsigned short v33 = 9061;
unsigned int v32 = 2191229230U;
double v31 = -1146794419390898803.53786;
trace++;
switch (trace)
{
case 5: 
return -562399413;
case 7: 
return -1332232225;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
union uu0 v37 = {799252U };
signed short v36 = 32667;
signed short v35 = 22146;
trace++;
switch (trace)
{
case 9: 
{
signed short v38;
v38 = v3 ();
history[history_index++] = (int)v38;
}
break;
case 11: 
return v34;
default: abort ();
}
}
}
}

signed char v5 (unsigned char v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
union uu1 v42 = {309940751 };
double v41 = -7479080710841355032.26962;
unsigned short v40 = 43498;
trace++;
switch (trace)
{
case 1: 
return 41;
default: abort ();
}
}
}
}
