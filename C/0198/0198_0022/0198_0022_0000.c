#include <stdio.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed char v3 (signed char, float, struct ss0);
extern signed char (*v4) (signed char, float, struct ss0);
extern signed char v7 (unsigned short, struct ss1, struct ss1, signed int);
extern signed char (*v8) (unsigned short, struct ss1, struct ss1, signed int);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
float v13 = 679107033.5093F;
unsigned char v12 = 233;
signed char v11 = -92;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v16;
v16 = v1 ();
history[history_index++] = (int)v16;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
