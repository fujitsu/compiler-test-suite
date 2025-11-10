#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed int);
extern unsigned short (*v2) (unsigned char, signed int);
unsigned char v3 (unsigned int);
unsigned char (*v4) (unsigned int) = v3;
extern signed int v5 (unsigned int, unsigned short);
extern signed int (*v6) (unsigned int, unsigned short);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern void v9 (float, double);
extern void (*v10) (float, double);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v7 (void) {
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

unsigned char v3 (unsigned int v11) {
history[history_index++] = (int)v11;
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
unsigned char v12;
signed int v13;
unsigned short v14;
v12='A';
v13=-199999;
v14 = (*v2) (v12, v13);
history[history_index++] = (int)v14;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
