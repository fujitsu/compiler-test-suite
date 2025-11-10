#include <stdlib.h>
extern unsigned short v1 (signed int, float, signed short, unsigned int);
extern unsigned short (*v2) (signed int, float, signed short, unsigned int);
signed int v3 (void);
signed int (*v4) (void) = v3;
extern unsigned char v5 (unsigned int, unsigned short, signed short, float);
extern unsigned char (*v6) (unsigned int, unsigned short, signed short, float);
extern signed short v7 (float);
extern signed short (*v8) (float);
extern signed int v9 (signed char, unsigned char);
extern signed int (*v10) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;

signed int v3 (void) {
for (;;) {
trace++;
switch (trace) {
case 12: return -199999;
case 11: return -199999;
case 10: 
{
signed int v56;
v56 = (*v4) ();
history[history_index++] = (int)v56;
return -199999;
}
break;
default: abort ();
}
}
}
