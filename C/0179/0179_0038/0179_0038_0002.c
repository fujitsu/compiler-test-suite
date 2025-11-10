#include <stdlib.h>
extern double v1 (float);
extern double (*v2) (float);
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
void v5 (signed short, signed char, signed short);
void (*v6) (signed short, signed char, signed short) = v5;
extern double v7 (void);
extern double (*v8) (void);
extern float v9 (unsigned short, unsigned int, unsigned int);
extern float (*v10) (unsigned short, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;

void v5 (signed short v18, signed char v19, signed short v20) {
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
for (;;) {
trace++;
switch (trace) {
case 2: return;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned int v3 (void) {
for (;;) {
trace++;
switch (trace) {
case 3: return 199999;
case 1: 
{
signed short v21;
signed char v22;
signed short v23;
v21=-111;
v22='a';
v23=-111;
(*v6) (v21, v22, v23);
return 199999;
}
break;
default: abort ();
}
}
}
