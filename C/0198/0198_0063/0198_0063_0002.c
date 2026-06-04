#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
signed int v5 (signed char, signed int);
signed int (*v6) (signed char, signed int) = v5;
struct ss0 v7 (void);
struct ss0 (*v8) (void) = v7;
float v9 (void);
float (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
double v36 = -1246681955915466054.40602;
unsigned char v35 = 203;
struct ss0 v34 = { 574156U, 791906U, 57500, };

float v9 (void)
{
{
for (;;) {
union uu0 v39 = {3479760419U };
struct ss1 v38 = { 3595, -8835577, 16970085U, 229U, };
unsigned char v37 = 186;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v40;
unsigned short v41;
v40 = 55971 - 11880;
v41 = (*v4) (v40);
history[history_index++] = (int)v41;
}
break;
case 9: 
{
unsigned char v42;
v42 = (*v2) ();
history[history_index++] = (int)v42;
}
break;
case 11: 
return 1416974325.28848F;
case 14: 
return -822255773.6693F;
default: abort ();
}
}
}
}

struct ss0 v7 (void)
{
{
for (;;) {
signed char v45 = -67;
signed char v44 = 83;
signed int v43 = -531432862;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed char v46, signed int v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
union uu0 v50 = {2576266617U };
unsigned short v49 = 23791;
unsigned short v48 = 17747;
trace++;
switch (trace)
{
case 4: 
return v47;
default: abort ();
}
}
}
}
