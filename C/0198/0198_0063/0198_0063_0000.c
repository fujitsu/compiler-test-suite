#include <stdio.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
extern signed int v5 (signed char, signed int);
extern signed int (*v6) (signed char, signed int);
extern struct ss0 v7 (void);
extern struct ss0 (*v8) (void);
extern float v9 (void);
extern float (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v13 = -1858869404;
signed short v12 = 14228;
union uu1 v11 = {2068144986 };

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v16;
v16 = v1 ();
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
