#include <stdio.h>
#include <stdlib.h>
signed short v1 (signed char, unsigned int, signed short);
signed short (*v2) (signed char, unsigned int, signed short) = v1;
unsigned char v3 (unsigned short, double, unsigned char, signed short);
unsigned char (*v4) (unsigned short, double, unsigned char, signed short) = v3;
extern signed char v5 (signed short, double);
extern signed char (*v6) (signed short, double);
extern float v7 (signed char);
extern float (*v8) (signed char);
void v9 (unsigned int, signed short);
void (*v10) (unsigned int, signed short) = v9;
extern int history[];
extern int history_index;
extern int trace;

void v9 (unsigned int v11, signed short v12) {
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

unsigned char v3 (unsigned short v13, double v14, unsigned char v15, signed short v16) {
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
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

signed short v1 (signed char v17, unsigned int v18, signed short v19) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
for (;;) {
trace++;
switch (trace) {
case 0: return -111;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed char v20;
unsigned int v21;
signed short v22;
signed short v23;
v20='a';
v21=199999;
v22=-111;
v23 = v1 (v20, v21, v22);
history[history_index++] = (int)v23;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
