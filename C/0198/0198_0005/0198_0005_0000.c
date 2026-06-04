#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static float v1 (struct ss0);
static float (*v2) (struct ss0) = v1;
static void v3 (signed short);
static void (*v4) (signed short) = v3;
extern struct ss0 v5 (void);
extern struct ss0 (*v6) (void);
extern union uu0 v7 (unsigned int, float, unsigned short, union uu0);
extern union uu0 (*v8) (unsigned int, float, unsigned short, union uu0);
extern signed int v9 (signed short);
extern signed int (*v10) (signed short);
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v13 = { 126960U, 145659U, 36441, };
struct ss0 v12 = { 726597U, 152390U, 13903, };
signed char v11 = 42;

static void v3 (signed short v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
unsigned int v17 = 1816753226U;
signed int v16 = -1282781769;
signed short v15 = -7329;
trace++;
switch (trace)
{
case 1: 
{
struct ss0 v18;
float v19;
v18.f2 = 862671U;
v18.f1 = 978295U;
v18.f0 = 64550;
v19 = (*v2) (v18);
history[history_index++] = (int)v19;
}
break;
case 3: 
{
signed short v20;
v20 = v15 + 19259;
v3 (v20);
}
break;
case 4: 
{
signed short v21;
v21 = 20509 - v15;
(*v4) (v21);
}
break;
case 5: 
{
signed short v22;
v22 = 13114 + 15156;
v3 (v22);
}
break;
case 6: 
{
signed short v23;
v23 = 3579 + v15;
v3 (v23);
}
break;
case 7: 
{
struct ss0 v24;
float v25;
v24.f2 = 84403U;
v24.f1 = 546594U;
v24.f0 = 42874;
v25 = (*v2) (v24);
history[history_index++] = (int)v25;
}
break;
case 9: 
return;
case 13: 
return;
case 14: 
return;
case 15: 
return;
case 16: 
return;
case 17: 
return;
case 19: 
return;
default: abort ();
}
}
}
}

static float v1 (struct ss0 v26)
{
history[history_index++] = (int)v26.f2;
history[history_index++] = (int)v26.f1;
history[history_index++] = (int)v26.f0;
{
for (;;) {
signed int v29 = -459189461;
signed int v28 = -174389783;
unsigned char v27 = 73;
trace++;
switch (trace)
{
case 0: 
{
signed short v30;
v30 = 25983 + 21125;
v3 (v30);
}
break;
case 2: 
{
signed short v31;
v31 = -31724 - 1274;
(*v4) (v31);
}
break;
case 8: 
{
signed short v32;
v32 = 7991 + 11267;
(*v4) (v32);
}
break;
case 10: 
{
struct ss0 v33;
v33 = (*v6) ();
history[history_index++] = (int)v33.f2;
history[history_index++] = (int)v33.f1;
history[history_index++] = (int)v33.f0;
}
break;
case 12: 
return -1593840491.31742F;
case 18: 
return 1755592852.63422F;
case 20: 
return -1785525649.51867F;
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
struct ss0 v36;
float v37;
v36.f2 = 927331U;
v36.f1 = 663978U;
v36.f0 = 27563;
v37 = (*v2) (v36);
history[history_index++] = (int)v37;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
