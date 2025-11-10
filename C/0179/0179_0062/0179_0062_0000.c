#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
signed int v3 (signed short, signed int);
signed int (*v4) (signed short, signed int) = v3;
extern double v5 (signed int, signed short, unsigned short);
extern double (*v6) (signed int, signed short, unsigned short);
unsigned int v7 (unsigned int);
unsigned int (*v8) (unsigned int) = v7;
signed int v9 (void);
signed int (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed int v9 (void) {
for (;;) {
trace++;
switch (trace) {
case 12: return -199999;
case 10: 
{
unsigned int v11;
unsigned int v12;
v11=199999;
v12 = (*v8) (v11);
history[history_index++] = (int)v12;
return -199999;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned int v7 (unsigned int v13) {
history[history_index++] = (int)v13;
for (;;) {
trace++;
switch (trace) {
case 11: return 199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v3 (signed short v14, signed int v15) {
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
for (;;) {
trace++;
switch (trace) {
case 7: return -199999;
case 3: return -199999;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
(*v2) ();
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
