#include <stdio.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern float v1 (unsigned char);
extern float (*v2) (unsigned char);
extern struct ss1 v7 (unsigned int, unsigned char);
extern struct ss1 (*v8) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v13 = 74;
unsigned short v12 = 39092;
double v11 = -6867915684173917142.56414;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v16;
float v17;
v16 = 2 + 148;
v17 = v1 (v16);
history[history_index++] = (int)v17;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
