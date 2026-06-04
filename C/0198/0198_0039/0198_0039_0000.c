#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
struct ss1 v1 (void);
struct ss1 (*v2) (void) = v1;
unsigned short v3 (union uu0, signed char, signed int);
unsigned short (*v4) (union uu0, signed char, signed int) = v3;
static signed char v5 (void);
static signed char (*v6) (void) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed char v9 (struct ss0, signed int);
extern signed char (*v10) (struct ss0, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v13 = 122;
signed short v12 = -20699;
unsigned short v11 = 23105;

static signed char v5 (void)
{
{
for (;;) {
float v16 = -1197491271.38511F;
signed int v15 = 903319277;
float v14 = 1031628789.52831F;
trace++;
switch (trace)
{
case 3: 
{
struct ss0 v17;
signed int v18;
signed char v19;
v17.f2 = 875409U;
v17.f1 = 520690U;
v17.f0 = 9134;
v18 = v15 + 523463763;
v19 = (*v10) (v17, v18);
history[history_index++] = (int)v19;
}
break;
case 10: 
{
struct ss0 v20;
signed int v21;
signed char v22;
v20.f2 = 698175U;
v20.f1 = 744333U;
v20.f0 = 60763;
v21 = v15 + v15;
v22 = v9 (v20, v21);
history[history_index++] = (int)v22;
}
break;
case 12: 
return -87;
case 15: 
return 59;
default: abort ();
}
}
}
}

unsigned short v3 (union uu0 v23, signed char v24, signed int v25)
{
history[history_index++] = (int)v23.f3;
history[history_index++] = (int)v24;
history[history_index++] = (int)v25;
{
for (;;) {
struct ss1 v28 = { 22057, 21244163, 5059490U, 8U, };
union uu0 v27 = {1767473753U };
struct ss0 v26 = { 525107U, 947112U, 6815, };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

struct ss1 v1 (void)
{
{
for (;;) {
struct ss1 v31 = { 6597, -45910990, 46935352U, 474U, };
signed char v30 = 111;
signed int v29 = -916435521;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v32;
v32 = v7 ();
history[history_index++] = (int)v32;
}
break;
case 2: 
{
signed char v33;
v33 = v5 ();
history[history_index++] = (int)v33;
}
break;
case 5: 
{
struct ss0 v34;
signed int v35;
signed char v36;
v34.f2 = 1037552U;
v34.f1 = 675900U;
v34.f0 = 29815;
v35 = 594192394 - v29;
v36 = (*v10) (v34, v35);
history[history_index++] = (int)v36;
}
break;
case 7: 
{
unsigned int v37;
v37 = v7 ();
history[history_index++] = (int)v37;
}
break;
case 9: 
{
signed char v38;
v38 = (*v6) ();
history[history_index++] = (int)v38;
}
break;
case 13: 
{
struct ss1 v39;
v39.f3 = 54167;
v39.f2 = 11040367;
v39.f1 = 9870347U;
v39.f0 = 230U;
return v39;
}
case 16: 
{
struct ss1 v40;
v40.f3 = 1892;
v40.f2 = -35063409;
v40.f1 = 60560359U;
v40.f0 = 203U;
return v40;
}
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
struct ss1 v43;
v43 = v1 ();
history[history_index++] = (int)v43.f3;
history[history_index++] = (int)v43.f2;
history[history_index++] = (int)v43.f1;
history[history_index++] = (int)v43.f0;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
