#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
unsigned short v3 (unsigned short);
unsigned short (*v4) (unsigned short) = v3;
extern signed int v5 (signed char, signed int);
extern signed int (*v6) (signed char, signed int);
extern struct ss0 v7 (void);
extern struct ss0 (*v8) (void);
extern float v9 (void);
extern float (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v19 = -2137823187;
union uu1 v18 = {-1858165518 };
double v17 = 978578066053242086.27635;

unsigned short v3 (unsigned short v20)
{
history[history_index++] = (int)v20;
{
for (;;) {
unsigned char v23 = 14;
unsigned int v22 = 2351825493U;
double v21 = -8180903393090961081.17109;
trace++;
switch (trace)
{
case 3: 
{
signed char v24;
signed int v25;
signed int v26;
v24 = 66 + -50;
v25 = 574453770 + 539249693;
v26 = (*v6) (v24, v25);
history[history_index++] = (int)v26;
}
break;
case 5: 
{
unsigned char v27;
v27 = v1 ();
history[history_index++] = (int)v27;
}
break;
case 7: 
{
unsigned char v28;
v28 = v1 ();
history[history_index++] = (int)v28;
}
break;
case 13: 
return v20;
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
float v31 = 54320256.39816F;
union uu0 v30 = {3353664131U };
union uu1 v29 = {-1640056689 };
trace++;
switch (trace)
{
case 0: 
return 213;
case 1: 
{
float v32;
v32 = v9 ();
history[history_index++] = (int)v32;
}
break;
case 6: 
return 21;
case 8: 
{
float v33;
v33 = (*v10) ();
history[history_index++] = (int)v33;
}
break;
case 10: 
return 172;
case 12: 
return 67;
case 15: 
return 155;
default: abort ();
}
}
}
}
