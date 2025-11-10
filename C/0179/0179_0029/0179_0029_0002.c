#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned int v5 (signed char, signed char);
extern unsigned int (*v6) (signed char, signed char);
signed int v7 (signed char);
signed int (*v8) (signed char) = v7;
unsigned short v9 (unsigned int);
unsigned short (*v10) (unsigned int) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned short v9 (unsigned int v22) {
history[history_index++] = (int)v22;
for (;;) {
trace++;
switch (trace) {
case 11: return 111;
case 2: return 111;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v7 (signed char v23) {
history[history_index++] = (int)v23;
for (;;) {
trace++;
switch (trace) {
case 13: return -199999;
case 5: return -199999;
case 3: 
{
signed short v24;
v24 = (*v2) ();
history[history_index++] = (int)v24;
return -199999;
}
break;
case 1: 
{
unsigned int v25;
unsigned short v26;
v25=199999;
v26 = v9 (v25);
history[history_index++] = (int)v26;
return -199999;
}
break;
default: abort ();
}
}
}
