#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed int, signed int, unsigned short, signed int);
extern unsigned short (*v2) (signed int, signed int, unsigned short, signed int);
extern unsigned short v3 (float, unsigned char, unsigned short, signed char);
extern unsigned short (*v4) (float, unsigned char, unsigned short, signed char);
signed int v5 (double, double, unsigned int, unsigned short);
signed int (*v6) (double, double, unsigned int, unsigned short) = v5;
double v7 (float);
double (*v8) (float) = v7;
extern double v9 (unsigned char);
extern double (*v10) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;

double v7 (float v11) {
history[history_index++] = (int)v11;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v5 (double v12, double v13, unsigned int v14, unsigned short v15) {
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
for (;;) {
trace++;
switch (trace) {
case 1: return -199999;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed int v16;
signed int v17;
unsigned short v18;
signed int v19;
unsigned short v20;
v16=-199999;
v17=-199999;
v18=111;
v19=-199999;
v20 = v1 (v16, v17, v18, v19);
history[history_index++] = (int)v20;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
