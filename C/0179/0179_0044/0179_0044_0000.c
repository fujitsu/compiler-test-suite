#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char);
extern void (*v2) (signed char);
extern void v3 (signed int);
extern void (*v4) (signed int);
extern signed char v5 (signed char, unsigned int);
extern signed char (*v6) (signed char, unsigned int);
extern void v7 (signed short, unsigned short, signed short);
extern void (*v8) (signed short, unsigned short, signed short);
unsigned int v9 (float);
unsigned int (*v10) (float) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (float v11) {
history[history_index++] = (int)v11;
for (;;) {
trace++;
switch (trace) {
case 5: return 199999;
case 3: 
{
signed char v12;
unsigned int v13;
signed char v14;
v12='a';
v13=199999;
v14 = (*v6) (v12, v13);
history[history_index++] = (int)v14;
return 199999;
}
break;
case 1: return 199999;
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
v15='a';
(*v2) (v15);
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
