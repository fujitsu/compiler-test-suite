#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed int, signed char);
extern signed int (*v2) (signed int, signed char);
signed short v3 (unsigned short);
signed short (*v4) (unsigned short) = v3;
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
signed char v9 (signed short);
signed char (*v10) (signed short) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed char v9 (signed short v11) {
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

signed short v3 (unsigned short v12) {
history[history_index++] = (int)v12;
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
signed int v13;
signed char v14;
signed int v15;
v13=-199999;
v14='a';
v15 = (*v2) (v13, v14);
history[history_index++] = (int)v15;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
