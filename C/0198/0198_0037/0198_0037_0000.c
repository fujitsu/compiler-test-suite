#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed int v1 (unsigned char, unsigned char, signed short);
extern signed int (*v2) (unsigned char, unsigned char, signed short);
struct ss0 v3 (struct ss0, unsigned char, unsigned char, signed int);
struct ss0 (*v4) (struct ss0, unsigned char, unsigned char, signed int) = v3;
extern struct ss1 v5 (signed short, signed char, signed short);
extern struct ss1 (*v6) (signed short, signed char, signed short);
union uu1 v7 (unsigned char, unsigned int, unsigned short);
union uu1 (*v8) (unsigned char, unsigned int, unsigned short) = v7;
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v13 = { 23376, 66310721, 13667117U, 82U, };
float v12 = 716851831.54924F;
signed char v11 = 86;

union uu1 v7 (unsigned char v14, unsigned int v15, unsigned short v16)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
{
for (;;) {
struct ss0 v19 = { 292100U, 368529U, 14041, };
float v18 = -1216151369.18870F;
double v17 = -9116661424985986548.63331;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

struct ss0 v3 (struct ss0 v20, unsigned char v21, unsigned char v22, signed int v23)
{
history[history_index++] = (int)v20.f2;
history[history_index++] = (int)v20.f1;
history[history_index++] = (int)v20.f0;
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
{
for (;;) {
struct ss0 v26 = { 25543U, 733923U, 45805, };
signed int v25 = -117827352;
signed int v24 = 1058356201;
trace++;
switch (trace)
{
case 6: 
{
struct ss0 v27;
v27.f2 = 388775U;
v27.f1 = 402248U;
v27.f0 = 41356;
return v27;
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
unsigned char v30;
unsigned char v31;
signed short v32;
signed int v33;
v30 = 167 + 59;
v31 = 12 + 48;
v32 = -27928 + -14980;
v33 = (*v2) (v30, v31, v32);
history[history_index++] = (int)v33;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
