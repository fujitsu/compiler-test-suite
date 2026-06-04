#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed int v1 (unsigned char);
signed int (*v2) (unsigned char) = v1;
extern signed short v7 (void);
extern signed short (*v8) (void);
static float v9 (signed int);
static float (*v10) (signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v13 = { 21020, -46784932, 24996472U, 54U, };
double v12 = 760667342441356585.24416;
signed int v11 = -2028337149;

static float v9 (signed int v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
union uu0 v17 = {2643685622U };
unsigned int v16 = 359138319U;
signed char v15 = -48;
trace++;
switch (trace)
{
case 1: 
return 1874730587.8408F;
default: abort ();
}
}
}
}

signed int v1 (unsigned char v18)
{
history[history_index++] = (int)v18;
{
for (;;) {
double v21 = -566045423294210931.42419;
struct ss1 v20 = { 37163, 20858588, 21685312U, 272U, };
unsigned char v19 = 175;
trace++;
switch (trace)
{
case 0: 
{
signed int v22;
float v23;
v22 = -544264850 - -1564659441;
v23 = (*v10) (v22);
history[history_index++] = (int)v23;
}
break;
case 2: 
{
signed short v24;
v24 = (*v8) ();
history[history_index++] = (int)v24;
}
break;
case 5: 
return 1238463466;
case 7: 
{
signed short v25;
v25 = (*v8) ();
history[history_index++] = (int)v25;
}
break;
case 15: 
return 877403099;
case 18: 
return -411233904;
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
unsigned char v28;
signed int v29;
v28 = 52 - 111;
v29 = (*v2) (v28);
history[history_index++] = (int)v29;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
