#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed short v1 (void);
signed short (*v2) (void) = v1;
static struct ss1 v3 (void);
static struct ss1 (*v4) (void) = v3;
extern union uu1 v5 (void);
extern union uu1 (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
unsigned short v9 (signed char, struct ss1, struct ss1);
unsigned short (*v10) (signed char, struct ss1, struct ss1) = v9;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v13 = 3817192868U;
struct ss1 v12 = { 62330, -10687531, 33594549U, 299U, };
signed int v11 = 2064246075;

unsigned short v9 (signed char v14, struct ss1 v15, struct ss1 v16)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15.f3;
history[history_index++] = (int)v15.f2;
history[history_index++] = (int)v15.f1;
history[history_index++] = (int)v15.f0;
history[history_index++] = (int)v16.f3;
history[history_index++] = (int)v16.f2;
history[history_index++] = (int)v16.f1;
history[history_index++] = (int)v16.f0;
{
for (;;) {
union uu0 v19 = {1946584526U };
signed char v18 = -27;
signed char v17 = -20;
trace++;
switch (trace)
{
case 7: 
{
signed short v20;
v20 = (*v8) ();
history[history_index++] = (int)v20;
}
break;
case 13: 
return 14976;
default: abort ();
}
}
}
}

static struct ss1 v3 (void)
{
{
for (;;) {
signed char v23 = 15;
double v22 = -2764775379704850628.31;
double v21 = -8393555191545010461.20043;
trace++;
switch (trace)
{
case 2: 
{
struct ss1 v24;
v24.f3 = 8652;
v24.f2 = -4145936;
v24.f1 = 13425501U;
v24.f0 = 376U;
return v24;
}
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
union uu1 v27 = {-207123916 };
unsigned int v26 = 3794706242U;
union uu1 v25 = {-1819403607 };
trace++;
switch (trace)
{
case 0: 
return -31224;
case 1: 
{
struct ss1 v28;
v28 = (*v4) ();
history[history_index++] = (int)v28.f3;
history[history_index++] = (int)v28.f2;
history[history_index++] = (int)v28.f1;
history[history_index++] = (int)v28.f0;
}
break;
case 3: 
{
union uu1 v29;
v29 = (*v6) ();
history[history_index++] = (int)v29.f2;
}
break;
case 5: 
{
signed short v30;
v30 = (*v8) ();
history[history_index++] = (int)v30;
}
break;
case 15: 
return 15416;
case 17: 
return -5471;
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
signed short v33;
v33 = v1 ();
history[history_index++] = (int)v33;
}
} while (trace < 17);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
