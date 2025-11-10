#include <stdlib.h>
extern unsigned int v1 (float, signed short, unsigned short);
extern unsigned int (*v2) (float, signed short, unsigned short);
extern double v3 (signed int, signed char, signed short, unsigned short);
extern double (*v4) (signed int, signed char, signed short, unsigned short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
void v7 (unsigned int, signed int, signed char, signed int);
void (*v8) (unsigned int, signed int, signed char, signed int) = v7;
signed int v9 (void);
signed int (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed int v9 (void) {
for (;;) {
trace++;
switch (trace) {
case 17: return -199999;
case 5: return -199999;
case 3: return -199999;
case 1: 
{
float v39;
signed short v40;
unsigned short v41;
unsigned int v42;
v39=1.234;
v40=-111;
v41=111;
v42 = v1 (v39, v40, v41);
history[history_index++] = (int)v42;
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

void v7 (unsigned int v43, signed int v44, signed char v45, signed int v46) {
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
for (;;) {
trace++;
switch (trace) {
case 13: return;
case 9: 
{
unsigned short v47;
v47 = (*v6) ();
history[history_index++] = (int)v47;
return;
}
break;
default: abort ();
}
}
}
