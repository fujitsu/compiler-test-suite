#include <stdio.h>
#include <stdlib.h>
extern double v1 (unsigned int);
extern double (*v2) (unsigned int);
extern signed int v3 (double);
extern signed int (*v4) (double);
extern unsigned short v5 (signed short);
extern unsigned short (*v6) (signed short);
extern double v7 (unsigned char, signed char, float);
extern double (*v8) (unsigned char, signed char, float);
unsigned char v9 (signed int, signed char, signed short, signed int);
unsigned char (*v10) (signed int, signed char, signed short, signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned char v9 (signed int v11, signed char v12, signed short v13, signed int v14) {
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
unsigned int v15;
double v16;
v15=199999;
v16 = (*v2) (v15);
history[history_index++] = (int)v16;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
