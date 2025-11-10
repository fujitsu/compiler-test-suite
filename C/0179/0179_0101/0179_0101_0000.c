#include <stdio.h>
#include <stdlib.h>
unsigned int v1 (signed short);
unsigned int (*v2) (signed short) = v1;
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
signed short v5 (float, unsigned int, signed short);
signed short (*v6) (float, unsigned int, signed short) = v5;
extern unsigned char v7 (unsigned short, unsigned int);
extern unsigned char (*v8) (unsigned short, unsigned int);
extern unsigned short v9 (float);
extern unsigned short (*v10) (float);
extern int history[];
extern int history_index;
extern int trace;

signed short v5 (float v11, unsigned int v12, signed short v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
for (;;) {
trace++;
switch (trace) {
case 1: return -111;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned int v1 (signed short v14) {
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 2: return 199999;
case 0: 
{
float v15;
unsigned int v16;
signed short v17;
signed short v18;
v15=1.234;
v16=199999;
v17=-111;
v18 = v5 (v15, v16, v17);
history[history_index++] = (int)v18;
return 199999;
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
signed short v19;
unsigned int v20;
v19=-111;
v20 = (*v2) (v19);
history[history_index++] = (int)v20;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
