#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (unsigned char, unsigned char, unsigned int, signed short);
extern unsigned char (*v4) (unsigned char, unsigned char, unsigned int, signed short);
void v5 (unsigned int, signed int, unsigned short);
void (*v6) (unsigned int, signed int, unsigned short) = v5;
extern unsigned short v7 (unsigned int);
extern unsigned short (*v8) (unsigned int);
extern unsigned char v9 (double, double, unsigned char, unsigned char);
extern unsigned char (*v10) (double, double, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;

void v5 (unsigned int v11, signed int v12, unsigned short v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
for (;;) {
trace++;
switch (trace) {
case 8: return;
case 7: return;
case 6: 
{
unsigned int v14;
signed int v15;
unsigned short v16;
v14=199999;
v15=-199999;
v16=111;
(*v6) (v14, v15, v16);
return;
}
break;
case 4: return;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
unsigned int v17;
v17 = (*v2) ();
history[history_index++] = (int)v17;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
