#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern float v3 (double);
extern float (*v4) (double);
signed short v5 (signed char);
signed short (*v6) (signed char) = v5;
extern double v7 (signed char, signed int, signed int);
extern double (*v8) (signed char, signed int, signed int);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (void) {
for (;;) {
trace++;
switch (trace) {
case 10: return 199999;
case 4: return 199999;
case 2: return 199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v5 (signed char v11) {
history[history_index++] = (int)v11;
for (;;) {
trace++;
switch (trace) {
case 13: return -111;
case 7: 
{
signed char v12;
signed int v13;
signed int v14;
double v15;
v12='a';
v13=-199999;
v14=-199999;
v15 = (*v8) (v12, v13, v14);
history[history_index++] = (int)v15;
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
signed int v16;
v16 = (*v2) ();
history[history_index++] = (int)v16;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
