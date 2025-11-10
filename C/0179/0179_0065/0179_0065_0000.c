#include <stdio.h>
#include <stdlib.h>
void v1 (signed short, signed short, signed int, signed int);
void (*v2) (signed short, signed short, signed int, signed int) = v1;
signed short v3 (float, float);
signed short (*v4) (float, float) = v3;
extern void v5 (float);
extern void (*v6) (float);
extern unsigned short v7 (unsigned int, signed short);
extern unsigned short (*v8) (unsigned int, signed short);
extern signed short v9 (unsigned int, double, unsigned short);
extern signed short (*v10) (unsigned int, double, unsigned short);
extern int history[];
extern int history_index;
extern int trace;

signed short v3 (float v11, float v12) {
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

void v1 (signed short v13, signed short v14, signed int v15, signed int v16) {
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
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
signed short v17;
signed short v18;
signed int v19;
signed int v20;
v17=-111;
v18=-111;
v19=-199999;
v20=-199999;
(*v2) (v17, v18, v19, v20);
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
