#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss0 v1 (float);
extern struct ss0 (*v2) (float);
static unsigned int v3 (void);
static unsigned int (*v4) (void) = v3;
struct ss1 v5 (void);
struct ss1 (*v6) (void) = v5;
extern signed int v7 (unsigned int, union uu1, signed char);
extern signed int (*v8) (unsigned int, union uu1, signed char);
union uu0 v9 (float);
union uu0 (*v10) (float) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed short v13 = -7190;
unsigned char v12 = 187;
float v11 = -202916264.17853F;

union uu0 v9 (float v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
struct ss1 v17 = { 55466, -26684790, 10397329U, 339U, };
signed int v16 = 762978232;
struct ss0 v15 = { 116084U, 733695U, 37796, };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

struct ss1 v5 (void)
{
{
for (;;) {
unsigned short v20 = 48778;
signed short v19 = 13928;
signed char v18 = -22;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v21;
v21 = (*v4) ();
history[history_index++] = (int)v21;
}
break;
case 4: 
{
unsigned int v22;
v22 = (*v4) ();
history[history_index++] = (int)v22;
}
break;
case 6: 
{
unsigned int v23;
v23 = (*v4) ();
history[history_index++] = (int)v23;
}
break;
case 10: 
{
unsigned int v24;
v24 = (*v4) ();
history[history_index++] = (int)v24;
}
break;
case 12: 
{
struct ss1 v25;
v25.f3 = 25297;
v25.f2 = -29102982;
v25.f1 = 57979524U;
v25.f0 = 44U;
return v25;
}
default: abort ();
}
}
}
}

static unsigned int v3 (void)
{
{
for (;;) {
struct ss0 v28 = { 533654U, 788933U, 61064, };
unsigned int v27 = 4062719331U;
signed short v26 = 27267;
trace++;
switch (trace)
{
case 3: 
return 2135914U;
case 5: 
return 1091052240U;
case 7: 
{
unsigned int v29;
v29 = v3 ();
history[history_index++] = (int)v29;
}
break;
case 8: 
return v27;
case 9: 
return v27;
case 11: 
return 4241924116U;
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
float v32;
struct ss0 v33;
v32 = -395744907.54606F;
v33 = (*v2) (v32);
history[history_index++] = (int)v33.f2;
history[history_index++] = (int)v33.f1;
history[history_index++] = (int)v33.f0;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
