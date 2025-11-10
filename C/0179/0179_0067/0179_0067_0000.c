#include <stdio.h>
#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern signed char v3 (unsigned int, float);
extern signed char (*v4) (unsigned int, float);
extern unsigned char v5 (unsigned char, double);
extern unsigned char (*v6) (unsigned char, double);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
void v9 (signed int, double, unsigned char);
void (*v10) (signed int, double, unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;

void v9 (signed int v11, double v12, unsigned char v13) {
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

signed short v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 12: return -111;
case 0: 
{
unsigned short v14;
v14 = (*v8) ();
history[history_index++] = (int)v14;
return -111;
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
signed short v15;
v15 = (*v2) ();
history[history_index++] = (int)v15;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
