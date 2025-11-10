#include <stdio.h>
#include <stdlib.h>
double v1 (float, double, unsigned int);
double (*v2) (float, double, unsigned int) = v1;
extern double v3 (void);
extern double (*v4) (void);
float v5 (unsigned char, unsigned char, signed int);
float (*v6) (unsigned char, unsigned char, signed int) = v5;
extern double v7 (signed short, signed int, unsigned int);
extern double (*v8) (signed short, signed int, unsigned int);
extern signed char v9 (signed short, unsigned short, float, signed char);
extern signed char (*v10) (signed short, unsigned short, float, signed char);
extern int history[];
extern int history_index;
extern int trace;

float v5 (unsigned char v11, unsigned char v12, signed int v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
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

double v1 (float v14, double v15, unsigned int v16) {
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
for (;;) {
trace++;
switch (trace) {
case 0: return 111111.2222222;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
float v17;
double v18;
unsigned int v19;
double v20;
v17=1.234;
v18=111111.2222222;
v19=199999;
v20 = (*v2) (v17, v18, v19);
history[history_index++] = (int)v20;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
