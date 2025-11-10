#include <stdio.h>
#include <stdlib.h>
float v1 (signed short, unsigned short);
float (*v2) (signed short, unsigned short) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed short v5 (signed short, unsigned int);
extern signed short (*v6) (signed short, unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

float v1 (signed short v11, unsigned short v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
case 4: return 1.234;
case 0: 
{
signed int v13;
v13 = v3 ();
history[history_index++] = (int)v13;
return 1.234;
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
float v16;
v14=-111;
v15=111;
v16 = v1 (v14, v15);
history[history_index++] = (int)v16;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
