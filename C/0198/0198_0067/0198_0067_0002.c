#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static unsigned char v5 (void);
static unsigned char (*v6) (void) = v5;
signed int v7 (void);
signed int (*v8) (void) = v7;
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
double v37 = 4953265711101641948.53746;
double v36 = -5606598621703486695.54795;
signed int v35 = 1032493201;

unsigned short v9 (void)
{
{
for (;;) {
signed int v40 = -545584494;
union uu1 v39 = {-863208045 };
signed char v38 = -101;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v41;
v41 = (*v6) ();
history[history_index++] = (int)v41;
}
break;
case 4: 
return 34880;
case 6: 
{
unsigned char v42;
v42 = v5 ();
history[history_index++] = (int)v42;
}
break;
case 8: 
{
unsigned char v43;
v43 = (*v6) ();
history[history_index++] = (int)v43;
}
break;
case 10: 
return 16639;
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
unsigned short v46 = 1115;
signed int v45 = -540641047;
signed short v44 = -12278;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v5 (void)
{
{
for (;;) {
unsigned char v49 = 108;
float v48 = 1964811947.63857F;
double v47 = -5569700977223399825.37324;
trace++;
switch (trace)
{
case 3: 
return 128;
case 7: 
return v49;
case 9: 
return 38;
default: abort ();
}
}
}
}
