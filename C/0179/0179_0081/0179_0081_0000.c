#include <stdio.h>
#include <stdlib.h>
signed char v1 (unsigned short);
signed char (*v2) (unsigned short) = v1;
extern double v3 (unsigned int, signed short);
extern double (*v4) (unsigned int, signed short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
double v7 (unsigned short, unsigned int, signed char);
double (*v8) (unsigned short, unsigned int, signed char) = v7;
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern int history[];
extern int history_index;
extern int trace;

double v7 (unsigned short v11, unsigned int v12, signed char v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
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

signed char v1 (unsigned short v14) {
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 18: return 'a';
case 0: 
{
unsigned int v15;
signed short v16;
double v17;
v15=199999;
v16=-111;
v17 = (*v4) (v15, v16);
history[history_index++] = (int)v17;
return 'a';
}
break;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
unsigned short v18;
signed char v19;
v18=111;
v19 = v1 (v18);
history[history_index++] = (int)v19;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
