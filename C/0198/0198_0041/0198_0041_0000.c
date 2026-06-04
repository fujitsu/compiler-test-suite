#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static struct ss1 v1 (unsigned short, signed short, struct ss0);
static struct ss1 (*v2) (unsigned short, signed short, struct ss0) = v1;
union uu1 v3 (unsigned short, float);
union uu1 (*v4) (unsigned short, float) = v3;
extern union uu1 v5 (float, signed short, signed short);
extern union uu1 (*v6) (float, signed short, signed short);
extern void v7 (struct ss0);
extern void (*v8) (struct ss0);
unsigned short v9 (unsigned char);
unsigned short (*v10) (unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;
double v13 = -8664232724655893687.63974;
struct ss1 v12 = { 60718, -22517719, 58471998U, 456U, };
union uu1 v11 = {588283685 };

unsigned short v9 (unsigned char v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
unsigned short v17 = 56732;
double v16 = 6229234125992914463.5325;
double v15 = 7275387509859275343.56893;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

union uu1 v3 (unsigned short v18, float v19)
{
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
{
for (;;) {
union uu1 v22 = {1458287525 };
double v21 = 5685525325490452665.26803;
unsigned char v20 = 189;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static struct ss1 v1 (unsigned short v23, signed short v24, struct ss0 v25)
{
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
history[history_index++] = (int)v25.f2;
history[history_index++] = (int)v25.f1;
history[history_index++] = (int)v25.f0;
{
for (;;) {
signed short v28 = 25811;
struct ss1 v27 = { 15863, 43744246, 62646060U, 80U, };
float v26 = 858659141.17203F;
trace++;
switch (trace)
{
case 0: 
{
struct ss0 v29;
v29.f2 = 250433U;
v29.f1 = 890583U;
v29.f0 = v23;
v7 (v29);
}
break;
case 20: 
{
struct ss1 v30;
v30.f3 = v23;
v30.f2 = 51404965;
v30.f1 = 63213458U;
v30.f0 = 208U;
return v30;
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
unsigned short v33;
signed short v34;
struct ss0 v35;
struct ss1 v36;
v33 = 56372 + 47859;
v34 = 29797 + 1891;
v35.f2 = 41819U;
v35.f1 = 509697U;
v35.f0 = 27980;
v36 = (*v2) (v33, v34, v35);
history[history_index++] = (int)v36.f3;
history[history_index++] = (int)v36.f2;
history[history_index++] = (int)v36.f1;
history[history_index++] = (int)v36.f0;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
