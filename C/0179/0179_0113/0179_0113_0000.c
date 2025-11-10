#include <stdio.h>
#include <stdlib.h>
void v1 (unsigned int);
void (*v2) (unsigned int) = v1;
double v3 (unsigned short, unsigned char, signed short);
double (*v4) (unsigned short, unsigned char, signed short) = v3;
signed short v5 (double);
signed short (*v6) (double) = v5;
extern void v7 (signed int, signed char);
extern void (*v8) (signed int, signed char);
extern unsigned short v9 (signed char, signed int);
extern unsigned short (*v10) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;

signed short v5 (double v11) {
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

double v3 (unsigned short v12, unsigned char v13, signed short v14) {
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

void v1 (unsigned int v15) {
history[history_index++] = (int)v15;
for (;;) {
trace++;
switch (trace) {
case 0: return;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
unsigned int v16;
v16=199999;
(*v2) (v16);
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
