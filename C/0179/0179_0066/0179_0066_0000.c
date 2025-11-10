#include <stdio.h>
#include <stdlib.h>
extern double v1 (signed int, float, unsigned char, signed char);
extern double (*v2) (signed int, float, unsigned char, signed char);
double v3 (void);
double (*v4) (void) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
float v9 (signed short, unsigned char, signed int, unsigned char);
float (*v10) (signed short, unsigned char, signed int, unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;

float v9 (signed short v11, unsigned char v12, signed int v13, unsigned char v14) {
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

double v3 (void) {
for (;;) {
trace++;
switch (trace) {
case 10: return 111111.2222222;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed int v15;
float v16;
unsigned char v17;
signed char v18;
double v19;
v15=-199999;
v16=1.234;
v17='A';
v18='a';
v19 = (*v2) (v15, v16, v17, v18);
history[history_index++] = (int)v19;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
