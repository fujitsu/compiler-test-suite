#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static union uu0 v1 (void);
static union uu0 (*v2) (void) = v1;
void v3 (union uu1, unsigned int);
void (*v4) (union uu1, unsigned int) = v3;
static unsigned int v5 (struct ss0);
static unsigned int (*v6) (struct ss0) = v5;
static signed short v7 (void);
static signed short (*v8) (void) = v7;
static signed int v9 (void);
static signed int (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v13 = { 841586U, 483146U, 14478, };
signed short v12 = 17849;
float v11 = -1730607294.380F;

static signed int v9 (void)
{
{
for (;;) {
signed char v16 = 75;
signed char v15 = -37;
unsigned int v14 = 3705057209U;
trace++;
switch (trace)
{
case 1: 
{
signed short v17;
v17 = (*v8) ();
history[history_index++] = (int)v17;
}
break;
case 9: 
{
struct ss0 v18;
unsigned int v19;
v18.f2 = 28651U;
v18.f1 = 875299U;
v18.f0 = 42847;
v19 = (*v6) (v18);
history[history_index++] = (int)v19;
}
break;
case 13: 
return -155474793;
default: abort ();
}
}
}
}

static signed short v7 (void)
{
{
for (;;) {
struct ss1 v22 = { 56604, -35899627, 37204929U, 254U, };
unsigned int v21 = 293156769U;
double v20 = -6241673210365429847.58092;
trace++;
switch (trace)
{
case 2: 
{
signed short v23;
v23 = (*v8) ();
history[history_index++] = (int)v23;
}
break;
case 3: 
return -18389;
case 4: 
{
signed short v24;
v24 = v7 ();
history[history_index++] = (int)v24;
}
break;
case 5: 
{
signed short v25;
v25 = (*v8) ();
history[history_index++] = (int)v25;
}
break;
case 6: 
return 18075;
case 7: 
return -12982;
case 8: 
return -11233;
default: abort ();
}
}
}
}

static unsigned int v5 (struct ss0 v26)
{
history[history_index++] = (int)v26.f2;
history[history_index++] = (int)v26.f1;
history[history_index++] = (int)v26.f0;
{
for (;;) {
struct ss1 v29 = { 5002, -55341697, 7488584U, 375U, };
struct ss1 v28 = { 19052, 49829753, 39444049U, 61U, };
unsigned char v27 = 73;
trace++;
switch (trace)
{
case 10: 
{
union uu0 v30;
v30 = (*v2) ();
history[history_index++] = (int)v30.f3;
}
break;
case 12: 
return 1673010538U;
default: abort ();
}
}
}
}

void v3 (union uu1 v31, unsigned int v32)
{
history[history_index++] = (int)v31.f2;
history[history_index++] = (int)v32;
{
for (;;) {
signed short v35 = 13258;
union uu1 v34 = {-1273052148 };
unsigned char v33 = 15;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static union uu0 v1 (void)
{
{
for (;;) {
union uu0 v38 = {4162982421U };
unsigned int v37 = 1067242350U;
signed short v36 = 20244;
trace++;
switch (trace)
{
case 0: 
{
signed int v39;
v39 = (*v10) ();
history[history_index++] = (int)v39;
}
break;
case 11: 
{
union uu0 v40;
v40.f3 = -41;
return v40;
}
case 14: 
{
union uu0 v41;
v41.f3 = -83;
return v41;
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
union uu0 v44;
v44 = v1 ();
history[history_index++] = (int)v44.f3;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
