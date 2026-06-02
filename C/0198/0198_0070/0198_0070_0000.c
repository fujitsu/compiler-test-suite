#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern union uu1 v1 (struct ss1, signed char, signed char, unsigned short);
extern union uu1 (*v2) (struct ss1, signed char, signed char, unsigned short);
signed short v3 (void);
signed short (*v4) (void) = v3;
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
extern signed int v9 (struct ss0, struct ss1, unsigned short, float);
extern signed int (*v10) (struct ss0, struct ss1, unsigned short, float);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v13 = 183;
double v12 = 4347810054629678939.23869;
union uu0 v11 = {1513782182U };

signed short v3 (void)
{
{
for (;;) {
unsigned char v16 = 100;
signed short v15 = -13444;
signed char v14 = 125;
trace++;
switch (trace)
{
case 3: 
return 5280;
case 10: 
return -27807;
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
struct ss1 v19;
signed char v20;
signed char v21;
unsigned short v22;
union uu1 v23;
v19.f3 = 55489;
v19.f2 = 8018722;
v19.f1 = 45992896U;
v19.f0 = 258U;
v20 = 102 + -89;
v21 = 100 - 89;
v22 = 47871 - 39226;
v23 = v1 (v19, v20, v21, v22);
history[history_index++] = (int)v23.f2;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
