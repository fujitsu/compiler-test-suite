#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
unsigned short v3 (unsigned int, unsigned char, double);
unsigned short (*v4) (unsigned int, unsigned char, double) = v3;
extern double v5 (signed char, double);
extern double (*v6) (signed char, double);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern signed short v9 (unsigned int, double);
extern signed short (*v10) (unsigned int, double);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v3 (unsigned int v11, unsigned char v12, double v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
for (;;) {
trace++;
switch (trace) {
case 10: return 111;
case 9: return 111;
case 8: 
{
unsigned int v14;
unsigned char v15;
double v16;
unsigned short v17;
v14=199999;
v15='A';
v16=111111.2222222;
v17 = (*v4) (v14, v15, v16);
history[history_index++] = (int)v17;
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
signed int v18;
v18 = (*v2) ();
history[history_index++] = (int)v18;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
