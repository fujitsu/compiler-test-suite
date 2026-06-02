#include <stdio.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern float v1 (unsigned char);
extern float (*v2) (unsigned char);
extern void v3 (signed short, unsigned short, signed int);
extern void (*v4) (signed short, unsigned short, signed int);
extern signed char v7 (unsigned char, unsigned char);
extern signed char (*v8) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
float v13 = 698198266.53893F;
union uu1 v12 = {220888026 };
signed char v11 = 9;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v16;
float v17;
v16 = 24 - 59;
v17 = (*v2) (v16);
history[history_index++] = (int)v17;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
