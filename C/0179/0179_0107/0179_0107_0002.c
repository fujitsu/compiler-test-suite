#include <stdlib.h>
extern float v1 (signed short, unsigned short);
extern float (*v2) (signed short, unsigned short);
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed short v5 (signed short, unsigned int);
extern signed short (*v6) (signed short, unsigned int);
signed char v7 (void);
signed char (*v8) (void) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

signed char v7 (void) {
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

signed int v3 (void) {
for (;;) {
trace++;
switch (trace) {
case 3: return -199999;
case 1: 
{
unsigned short v19;
v19 = (*v10) ();
history[history_index++] = (int)v19;
return -199999;
}
break;
default: abort ();
}
}
}
