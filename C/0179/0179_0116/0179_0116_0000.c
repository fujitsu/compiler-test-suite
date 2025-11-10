#include <stdio.h>
#include <stdlib.h>
double v1 (signed int, unsigned short, signed int);
double (*v2) (signed int, unsigned short, signed int) = v1;
extern unsigned int v3 (signed int, unsigned char, signed char);
extern unsigned int (*v4) (signed int, unsigned char, signed char);
double v5 (unsigned char, unsigned int);
double (*v6) (unsigned char, unsigned int) = v5;
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern double v9 (signed int);
extern double (*v10) (signed int);
extern int history[];
extern int history_index;
extern int trace;

unsigned char v7 (void) {
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

double v5 (unsigned char v11, unsigned int v12) {
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

double v1 (signed int v13, unsigned short v14, signed int v15) {
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
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
signed int v16;
unsigned short v17;
signed int v18;
double v19;
v16=-199999;
v17=111;
v18=-199999;
v19 = (*v2) (v16, v17, v18);
history[history_index++] = (int)v19;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
