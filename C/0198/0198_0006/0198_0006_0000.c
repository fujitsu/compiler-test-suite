#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
unsigned short v3 (signed char, signed short);
unsigned short (*v4) (signed char, signed short) = v3;
struct ss0 v5 (void);
struct ss0 (*v6) (void) = v5;
signed char v7 (signed short, signed short, signed int);
signed char (*v8) (signed short, signed short, signed int) = v7;
double v9 (void);
double (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
float v13 = -2071485582.30924F;
signed int v12 = 245336867;
union uu0 v11 = {87030337U };

double v9 (void)
{
{
for (;;) {
double v16 = 1908701860661085044.34844;
signed short v15 = 16499;
signed short v14 = 11316;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed short v17, signed short v18, signed int v19)
{
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
{
for (;;) {
double v22 = 8862097147126055830.40160;
signed char v21 = -123;
struct ss1 v20 = { 23841, -48408477, 17678634U, 322U, };
trace++;
switch (trace)
{
case 9: 
return v21;
case 11: 
return v21;
default: abort ();
}
}
}
}

struct ss0 v5 (void)
{
{
for (;;) {
double v25 = 8164546355205485228.63424;
signed char v24 = -11;
struct ss0 v23 = { 488210U, 858374U, 40886, };
trace++;
switch (trace)
{
case 3: 
{
unsigned int v26;
v26 = (*v2) ();
history[history_index++] = (int)v26;
}
break;
case 6: 
{
unsigned int v27;
v27 = (*v2) ();
history[history_index++] = (int)v27;
}
break;
case 14: 
{
struct ss0 v28;
v28.f2 = 683594U;
v28.f1 = 108171U;
v28.f0 = 11564;
return v28;
}
case 17: 
{
struct ss0 v29;
v29.f2 = 537968U;
v29.f1 = 459144U;
v29.f0 = 46454;
return v29;
}
default: abort ();
}
}
}
}

unsigned short v3 (signed char v30, signed short v31)
{
history[history_index++] = (int)v30;
history[history_index++] = (int)v31;
{
for (;;) {
unsigned short v34 = 763;
struct ss1 v33 = { 36771, -59723754, 38769479U, 9U, };
double v32 = 4948735304101104440.42696;
trace++;
switch (trace)
{
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
unsigned int v37;
v37 = v1 ();
history[history_index++] = (int)v37;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
