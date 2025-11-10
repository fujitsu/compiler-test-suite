#include <stdio.h>
#include <stdlib.h>
signed char v1 (signed char, float);
signed char (*v2) (signed char, float) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed int v5 (unsigned short);
extern signed int (*v6) (unsigned short);
void v7 (double, unsigned short);
void (*v8) (double, unsigned short) = v7;
signed short v9 (void);
signed short (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed short v9 (void) {
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

void v7 (double v11, unsigned short v12) {
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

signed char v1 (signed char v13, float v14) {
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 0: return 'a';
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed char v15;
float v16;
signed char v17;
v15='a';
v16=1.234;
v17 = (*v2) (v15, v16);
history[history_index++] = (int)v17;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
