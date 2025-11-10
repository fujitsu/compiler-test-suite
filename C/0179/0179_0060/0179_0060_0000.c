#include <stdio.h>
#include <stdlib.h>
unsigned short v1 (signed short, unsigned short);
unsigned short (*v2) (signed short, unsigned short) = v1;
extern double v3 (void);
extern double (*v4) (void);
extern unsigned short v5 (float, unsigned int);
extern unsigned short (*v6) (float, unsigned int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (signed short, signed char);
extern signed short (*v10) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v1 (signed short v11, unsigned short v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
case 2: return 111;
case 0: 
{
double v13;
v13 = (*v4) ();
history[history_index++] = (int)v13;
return 111;
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
signed short v14;
unsigned short v15;
unsigned short v16;
v14=-111;
v15=111;
v16 = (*v2) (v14, v15);
history[history_index++] = (int)v16;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
