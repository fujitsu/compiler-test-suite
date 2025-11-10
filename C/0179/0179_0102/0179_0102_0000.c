#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (float, unsigned char, unsigned int, unsigned int);
extern unsigned int (*v2) (float, unsigned char, unsigned int, unsigned int);
unsigned short v3 (signed short, float, double);
unsigned short (*v4) (signed short, float, double) = v3;
extern signed char v5 (unsigned short, signed short, unsigned char);
extern signed char (*v6) (unsigned short, signed short, unsigned char);
extern void v7 (signed char, double, unsigned int);
extern void (*v8) (signed char, double, unsigned int);
unsigned char v9 (float, unsigned int);
unsigned char (*v10) (float, unsigned int) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned char v9 (float v11, unsigned int v12) {
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

unsigned short v3 (signed short v13, float v14, double v15) {
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
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
float v16;
unsigned char v17;
unsigned int v18;
unsigned int v19;
unsigned int v20;
v16=1.234;
v17='A';
v18=199999;
v19=199999;
v20 = (*v2) (v16, v17, v18, v19);
history[history_index++] = (int)v20;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
