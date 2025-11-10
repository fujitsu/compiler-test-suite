#include <stdio.h>
#include <stdlib.h>
extern float v1 (float, unsigned char, float);
extern float (*v2) (float, unsigned char, float);
extern double v3 (unsigned int, signed char);
extern double (*v4) (unsigned int, signed char);
extern signed char v5 (void);
extern signed char (*v6) (void);
signed int v7 (unsigned char, signed short, signed int, signed short);
signed int (*v8) (unsigned char, signed short, signed int, signed short) = v7;
void v9 (signed char, signed int, signed char, double);
void (*v10) (signed char, signed int, signed char, double) = v9;
extern int history[];
extern int history_index;
extern int trace;

void v9 (signed char v11, signed int v12, signed char v13, double v14) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 1: return;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v7 (unsigned char v15, signed short v16, signed int v17, signed short v18) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
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
float v19;
unsigned char v20;
float v21;
float v22;
v19=1.234;
v20='A';
v21=1.234;
v22 = (*v2) (v19, v20, v21);
history[history_index++] = (int)v22;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
