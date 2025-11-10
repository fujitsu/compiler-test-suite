#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (float, signed int, float);
extern unsigned short (*v2) (float, signed int, float);
extern signed short v3 (signed short, float, signed int, unsigned short);
extern signed short (*v4) (signed short, float, signed int, unsigned short);
extern signed short v5 (unsigned int, unsigned short, unsigned short, signed int);
extern signed short (*v6) (unsigned int, unsigned short, unsigned short, signed int);
void v7 (signed short, signed char, signed char, unsigned int);
void (*v8) (signed short, signed char, signed char, unsigned int) = v7;
extern double v9 (double, double);
extern double (*v10) (double, double);
extern int history[];
extern int history_index;
extern int trace;

void v7 (signed short v11, signed char v12, signed char v13, unsigned int v14) {
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
float v15;
signed int v16;
float v17;
unsigned short v18;
v15=1.234;
v16=-199999;
v17=1.234;
v18 = (*v2) (v15, v16, v17);
history[history_index++] = (int)v18;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
