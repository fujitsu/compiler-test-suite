#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned short v3 (unsigned int, unsigned char, double);
extern unsigned short (*v4) (unsigned int, unsigned char, double);
extern double v5 (signed char, double);
extern double (*v6) (signed char, double);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
signed short v9 (unsigned int, double);
signed short (*v10) (unsigned int, double) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed short v9 (unsigned int v19, double v20) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
for (;;) {
trace++;
switch (trace) {
case 12: return -111;
case 6: 
{
signed int v21;
v21 = (*v2) ();
history[history_index++] = (int)v21;
return -111;
}
break;
default: abort ();
}
}
}
