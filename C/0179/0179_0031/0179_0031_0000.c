#include <stdio.h>
#include <stdlib.h>
extern float v1 (double, unsigned char, unsigned int, signed short);
extern float (*v2) (double, unsigned char, unsigned int, signed short);
double v3 (signed int, signed short, unsigned int);
double (*v4) (signed int, signed short, unsigned int) = v3;
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
signed char v7 (unsigned short);
signed char (*v8) (unsigned short) = v7;
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;

signed char v7 (unsigned short v11) {
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

double v3 (signed int v12, signed short v13, unsigned int v14) {
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
double v15;
unsigned char v16;
unsigned int v17;
signed short v18;
float v19;
v15=111111.2222222;
v16='A';
v17=199999;
v18=-111;
v19 = v1 (v15, v16, v17, v18);
history[history_index++] = (int)v19;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
