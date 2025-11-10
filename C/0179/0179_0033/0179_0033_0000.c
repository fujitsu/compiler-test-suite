#include <stdio.h>
#include <stdlib.h>
signed short v1 (unsigned int);
signed short (*v2) (unsigned int) = v1;
extern signed short v3 (double);
extern signed short (*v4) (double);
extern double v5 (signed char, double, signed short, unsigned short);
extern double (*v6) (signed char, double, signed short, unsigned short);
extern float v7 (void);
extern float (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

signed short v1 (unsigned int v11) {
history[history_index++] = (int)v11;
for (;;) {
trace++;
switch (trace) {
case 0: return -111;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
unsigned int v12;
signed short v13;
v12=199999;
v13 = (*v2) (v12);
history[history_index++] = (int)v13;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
