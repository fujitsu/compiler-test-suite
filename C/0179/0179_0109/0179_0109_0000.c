#include <stdio.h>
#include <stdlib.h>
unsigned char v1 (unsigned char, unsigned int);
unsigned char (*v2) (unsigned char, unsigned int) = v1;
float v3 (void);
float (*v4) (void) = v3;
unsigned short v5 (signed short, signed char, signed int, double);
unsigned short (*v6) (signed short, signed char, signed int, double) = v5;
extern float v7 (signed short, signed int, float);
extern float (*v8) (signed short, signed int, float);
extern void v9 (signed int, signed int, double, double);
extern void (*v10) (signed int, signed int, double, double);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v5 (signed short v11, signed char v12, signed int v13, double v14) {
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

float v3 (void) {
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

unsigned char v1 (unsigned char v15, unsigned int v16) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
for (;;) {
trace++;
switch (trace) {
case 0: return 'A';
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
unsigned char v17;
unsigned int v18;
unsigned char v19;
v17='A';
v18=199999;
v19 = (*v2) (v17, v18);
history[history_index++] = (int)v19;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
