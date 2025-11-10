#include <stdio.h>
#include <stdlib.h>
extern double v1 (signed short, double, signed short);
extern double (*v2) (signed short, double, signed short);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern float v5 (double, double, float, double);
extern float (*v6) (double, double, float, double);
signed char v7 (void);
signed char (*v8) (void) = v7;
extern unsigned int v9 (signed short);
extern unsigned int (*v10) (signed short);
extern int history[];
extern int history_index;
extern int trace;

signed char v7 (void) {
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed short v11;
double v12;
signed short v13;
double v14;
v11=-111;
v12=111111.2222222;
v13=-111;
v14 = v1 (v11, v12, v13);
history[history_index++] = (int)v14;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
