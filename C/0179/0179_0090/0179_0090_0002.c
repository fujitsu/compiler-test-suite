#include <stdlib.h>
extern void v1 (unsigned short, float, unsigned short, unsigned char);
extern void (*v2) (unsigned short, float, unsigned short, unsigned char);
extern float v3 (void);
extern float (*v4) (void);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern double v7 (signed char, signed int, signed int, float);
extern double (*v8) (signed char, signed int, signed int, float);
unsigned int v9 (unsigned char, float);
unsigned int (*v10) (unsigned char, float) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (unsigned char v37, float v38) {
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
for (;;) {
trace++;
switch (trace) {
case 13: return 199999;
case 7: 
{
unsigned short v39;
float v40;
unsigned short v41;
unsigned char v42;
v39=111;
v40=1.234;
v41=111;
v42='A';
v1 (v39, v40, v41, v42);
return 199999;
}
break;
case 5: return 199999;
default: abort ();
}
}
}
