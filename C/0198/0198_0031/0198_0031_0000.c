#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed char v1 (double);
extern signed char (*v2) (double);
float v3 (signed int);
float (*v4) (signed int) = v3;
extern float v5 (unsigned short);
extern float (*v6) (unsigned short);
extern signed int v7 (void);
extern signed int (*v8) (void);
signed short v9 (float, signed char, union uu0, signed char);
signed short (*v10) (float, signed char, union uu0, signed char) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed short v13 = -22440;
unsigned int v12 = 1001139684U;
unsigned int v11 = 2168444019U;

signed short v9 (float v14, signed char v15, union uu0 v16, signed char v17)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16.f3;
history[history_index++] = (int)v17;
{
for (;;) {
float v20 = 657802663.1999F;
unsigned short v19 = 56045;
signed int v18 = -1312377610;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v21;
float v22;
v21 = 5977 - v19;
v22 = (*v6) (v21);
history[history_index++] = (int)v22;
}
break;
case 7: 
return -25164;
default: abort ();
}
}
}
}

float v3 (signed int v23)
{
history[history_index++] = (int)v23;
{
for (;;) {
double v26 = 1363397724022498832.56497;
unsigned short v25 = 55182;
signed short v24 = 30927;
trace++;
switch (trace)
{
case 9: 
{
signed int v27;
v27 = (*v8) ();
history[history_index++] = (int)v27;
}
break;
case 11: 
return -1980523817.54389F;
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
double v30;
signed char v31;
#if defined(__aarch64__)
 v30 = -2147483648;
#else
 v30 = -3918496752373587606.29966;
#endif
v31 = (*v2) (v30);
history[history_index++] = (int)v31;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
