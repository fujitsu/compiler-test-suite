#include <stdio.h>
#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern double v3 (float);
extern double (*v4) (float);
extern unsigned char v5 (signed char, unsigned short);
extern unsigned char (*v6) (signed char, unsigned short);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern signed short v9 (unsigned short, unsigned int);
extern signed short (*v10) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 2: return 199999;
case 0: 
{
signed char v11;
unsigned short v12;
unsigned char v13;
v11='a';
v12=111;
v13 = (*v6) (v11, v12);
history[history_index++] = (int)v13;
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
unsigned int v14;
v14 = (*v2) ();
history[history_index++] = (int)v14;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
