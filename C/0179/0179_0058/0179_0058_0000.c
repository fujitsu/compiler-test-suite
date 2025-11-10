#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char, signed int);
extern signed char (*v2) (signed char, signed int);
void v3 (signed short, double, signed int, float);
void (*v4) (signed short, double, signed int, float) = v3;
extern float v5 (unsigned char, float);
extern float (*v6) (unsigned char, float);
extern float v7 (unsigned short);
extern float (*v8) (unsigned short);
extern unsigned int v9 (signed char, signed short, double, signed int);
extern unsigned int (*v10) (signed char, signed short, double, signed int);
extern int history[];
extern int history_index;
extern int trace;

void v3 (signed short v11, double v12, signed int v13, float v14) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
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
signed char v15;
signed int v16;
signed char v17;
v15='a';
v16=-199999;
v17 = (*v2) (v15, v16);
history[history_index++] = (int)v17;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
