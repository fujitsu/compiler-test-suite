#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
unsigned int v5 (struct ss0);
unsigned int (*v6) (struct ss0) = v5;
extern signed short v7 (signed char, signed char, double);
extern signed short (*v8) (signed char, signed char, double);
static float v9 (unsigned int);
static float (*v10) (unsigned int) = v9;
extern int history[];
extern int history_index;
extern int trace;
union uu0 v13 = {4209206416U };
signed int v12 = -1094486463;
float v11 = -155895121.18904F;

static float v9 (unsigned int v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
struct ss1 v17 = { 29657, 26046997, 42418371U, 297U, };
signed int v16 = -1577290830;
struct ss1 v15 = { 15492, 22986152, 43280977U, 49U, };
trace++;
switch (trace)
{
case 7: 
{
unsigned int v18;
float v19;
v18 = 3949499343U + v14;
v19 = (*v10) (v18);
history[history_index++] = (int)v19;
}
break;
case 8: 
return -2054818738.27496F;
case 9: 
{
signed char v20;
signed char v21;
double v22;
signed short v23;
v20 = -118 + 70;
v21 = 113 - -64;
#if defined(__aarch64__)
v22 = -2147483648;
#else
v22 = -9111104635041583686.4384;
#endif
v23 = (*v8) (v20, v21, v22);
history[history_index++] = (int)v23;
}
break;
case 11: 
return -566206145.5327F;
default: abort ();
}
}
}
}

unsigned int v5 (struct ss0 v24)
{
history[history_index++] = (int)v24.f2;
history[history_index++] = (int)v24.f1;
history[history_index++] = (int)v24.f0;
{
for (;;) {
signed char v27 = -91;
signed char v26 = -16;
signed int v25 = -607666047;
trace++;
switch (trace)
{
case 4: 
return 582880801U;
case 6: 
{
unsigned int v28;
float v29;
v28 = 2381101568U - 1016288065U;
v29 = (*v10) (v28);
history[history_index++] = (int)v29;
}
break;
case 12: 
return 117977111U;
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
unsigned short v32;
v32 = (*v2) ();
history[history_index++] = (int)v32;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
