#include <stdio.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern float v1 (void);
extern float (*v2) (void);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned char v5 (float, unsigned short, unsigned int);
extern unsigned char (*v6) (float, unsigned short, unsigned int);
extern float v7 (signed int, float, struct ss0, unsigned short);
extern float (*v8) (signed int, float, struct ss0, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v13 = 54090;
struct ss1 v12 = { 25245, 23517477, 17450314U, 17U, };
signed int v11 = 1369676645;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
float v16;
v16 = (*v2) ();
history[history_index++] = (int)v16;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
