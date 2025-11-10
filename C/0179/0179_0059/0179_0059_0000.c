#include <stdio.h>
#include <stdlib.h>
signed int v1 (signed int, unsigned char, double);
signed int (*v2) (signed int, unsigned char, double) = v1;
void v3 (unsigned short, signed short, float);
void (*v4) (unsigned short, signed short, float) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned char v9 (unsigned char, signed char, double);
extern unsigned char (*v10) (unsigned char, signed char, double);
extern int history[];
extern int history_index;
extern int trace;

void v3 (unsigned short v11, signed short v12, float v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
for (;;) {
trace++;
switch (trace) {
case 1: return;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v1 (signed int v14, unsigned char v15, double v16) {
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
for (;;) {
trace++;
switch (trace) {
case 2: return -199999;
case 0: 
{
unsigned short v17;
signed short v18;
float v19;
v17=111;
v18=-111;
v19=1.234;
(*v4) (v17, v18, v19);
return -199999;
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
signed int v20;
unsigned char v21;
double v22;
signed int v23;
v20=-199999;
v21='A';
v22=111111.2222222;
v23 = (*v2) (v20, v21, v22);
history[history_index++] = (int)v23;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
