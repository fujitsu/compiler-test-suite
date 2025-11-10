#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
unsigned int v3 (double, unsigned int);
unsigned int (*v4) (double, unsigned int) = v3;
extern unsigned short v5 (unsigned short, unsigned short, signed char);
extern unsigned short (*v6) (unsigned short, unsigned short, signed char);
extern signed char v7 (signed int, unsigned char);
extern signed char (*v8) (signed int, unsigned char);
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
case 3: 
{
unsigned char v35;
v35 = (*v2) ();
history[history_index++] = (int)v35;
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

unsigned int v3 (double v36, unsigned int v37) {
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
for (;;) {
trace++;
switch (trace) {
case 19: return 199999;
case 1: 
{
unsigned char v38;
v38 = (*v2) ();
history[history_index++] = (int)v38;
return 199999;
}
break;
default: abort ();
}
}
}
