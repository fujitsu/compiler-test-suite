#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, signed short, double);
extern signed int (*v2) (signed short, signed short, double);
double v3 (void);
double (*v4) (void) = v3;
extern signed char v5 (signed int, unsigned char, float, unsigned int);
extern signed char (*v6) (signed int, unsigned char, float, unsigned int);
float v7 (void);
float (*v8) (void) = v7;
void v9 (signed short, double, unsigned short, signed int);
void (*v10) (signed short, double, unsigned short, signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;

void v9 (signed short v11, double v12, unsigned short v13, signed int v14) {
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

float v7 (void) {
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

double v3 (void) {
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
signed short v15;
signed short v16;
double v17;
signed int v18;
v15=-111;
v16=-111;
v17=111111.2222222;
v18 = v1 (v15, v16, v17);
history[history_index++] = (int)v18;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
