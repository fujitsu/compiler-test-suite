#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned char, signed short, double);
extern signed short (*v2) (unsigned char, signed short, double);
extern signed int v3 (signed int, signed char, unsigned short);
extern signed int (*v4) (signed int, signed char, unsigned short);
extern double v5 (signed int, signed char);
extern double (*v6) (signed int, signed char);
float v7 (signed char, signed char, unsigned short, unsigned char);
float (*v8) (signed char, signed char, unsigned short, unsigned char) = v7;
extern unsigned short v9 (signed short, float);
extern unsigned short (*v10) (signed short, float);
extern int history[];
extern int history_index;
extern int trace;

float v7 (signed char v11, signed char v12, unsigned short v13, unsigned char v14) {
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
unsigned char v15;
signed short v16;
double v17;
signed short v18;
v15='A';
v16=-111;
v17=111111.2222222;
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
