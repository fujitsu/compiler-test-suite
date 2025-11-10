#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned char, double, signed char, float);
extern unsigned char (*v2) (unsigned char, double, signed char, float);
signed short v3 (unsigned int, float, unsigned int);
signed short (*v4) (unsigned int, float, unsigned int) = v3;
signed char v5 (unsigned char, unsigned int, unsigned int, signed short);
signed char (*v6) (unsigned char, unsigned int, unsigned int, signed short) = v5;
extern signed char v7 (signed int, signed short);
extern signed char (*v8) (signed int, signed short);
extern unsigned short v9 (double, unsigned short);
extern unsigned short (*v10) (double, unsigned short);
extern int history[];
extern int history_index;
extern int trace;

signed char v5 (unsigned char v11, unsigned int v12, unsigned int v13, signed short v14) {
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
extern int history[];
extern int history_index;
extern int trace;

signed short v3 (unsigned int v15, float v16, unsigned int v17) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
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
unsigned char v18;
double v19;
signed char v20;
float v21;
unsigned char v22;
v18='A';
v19=111111.2222222;
v20='a';
v21=1.234;
v22 = (*v2) (v18, v19, v20, v21);
history[history_index++] = (int)v22;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
