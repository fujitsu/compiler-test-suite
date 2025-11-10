#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
unsigned char v3 (signed int);
unsigned char (*v4) (signed int) = v3;
void v5 (unsigned char, unsigned int, unsigned char);
void (*v6) (unsigned char, unsigned int, unsigned char) = v5;
signed char v7 (signed char, signed short, signed char, signed char);
signed char (*v8) (signed char, signed short, signed char, signed char) = v7;
extern signed short v9 (signed short, unsigned int);
extern signed short (*v10) (signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;

signed char v7 (signed char v11, signed short v12, signed char v13, signed char v14) {
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

void v5 (unsigned char v15, unsigned int v16, unsigned char v17) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
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

unsigned char v3 (signed int v18) {
history[history_index++] = (int)v18;
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
(*v2) ();
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
