#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern void v1 (float);
extern void (*v2) (float);
signed char v3 (void);
signed char (*v4) (void) = v3;
extern signed char v5 (struct ss0, float, signed char);
extern signed char (*v6) (struct ss0, float, signed char);
extern unsigned int v7 (signed int, signed char, double);
extern unsigned int (*v8) (signed int, signed char, double);
void v9 (float);
void (*v10) (float) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed int v13 = 570341681;
signed char v12 = 101;
signed char v11 = 44;

void v9 (float v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
unsigned short v17 = 55269;
struct ss1 v16 = { 30379, -29280794, 41751938U, 211U, };
signed short v15 = -13154;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
float v20 = -589192718.2717F;
struct ss0 v19 = { 321004U, 651700U, 10764, };
union uu1 v18 = {-266228612 };
trace++;
switch (trace)
{
case 3: 
{
float v21;
v21 = 1417430593.50861F;
v1 (v21);
}
break;
case 8: 
{
signed char v22;
v22 = (*v4) ();
history[history_index++] = (int)v22;
}
break;
case 9: 
{
struct ss0 v23;
float v24;
signed char v25;
signed char v26;
v23.f2 = 968577U;
v23.f1 = 642272U;
v23.f0 = 17576;
v24 = 225116986.35164F;
v25 = -45 - -109;
v26 = (*v6) (v23, v24, v25);
history[history_index++] = (int)v26;
}
break;
case 11: 
return -45;
case 13: 
return -75;
case 14: 
return -67;
case 17: 
return 32;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
float v29;
v29 = 378926786.11344F;
(*v2) (v29);
}
} while (trace < 19);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
