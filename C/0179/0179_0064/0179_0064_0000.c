#include <stdio.h>
#include <stdlib.h>
extern float v1 (signed int, float);
extern float (*v2) (signed int, float);
extern void v3 (unsigned char, unsigned int);
extern void (*v4) (unsigned char, unsigned int);
float v5 (unsigned short);
float (*v6) (unsigned short) = v5;
extern double v7 (float, unsigned char, unsigned char);
extern double (*v8) (float, unsigned char, unsigned char);
unsigned int v9 (double, signed int);
unsigned int (*v10) (double, signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (double v11, signed int v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
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

float v5 (unsigned short v13) {
history[history_index++] = (int)v13;
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
signed int v14;
float v15;
float v16;
v14=-199999;
v15=1.234;
v16 = v1 (v14, v15);
history[history_index++] = (int)v16;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
