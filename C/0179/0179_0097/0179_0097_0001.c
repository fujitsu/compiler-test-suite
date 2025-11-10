#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
unsigned int v3 (signed int, signed int);
unsigned int (*v4) (signed int, signed int) = v3;
extern float v5 (signed short, signed short, unsigned short, unsigned int);
extern float (*v6) (signed short, signed short, unsigned short, unsigned int);
extern signed char v7 (float);
extern signed char (*v8) (float);
extern signed int v9 (signed int, signed char, float);
extern signed int (*v10) (signed int, signed char, float);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v3 (signed int v33, signed int v34) {
history[history_index++] = (int)v33;
history[history_index++] = (int)v34;
for (;;) {
trace++;
switch (trace) {
case 7: return 199999;
case 5: 
{
signed int v35;
signed char v36;
float v37;
signed int v38;
v35=-199999;
v36='a';
v37=1.234;
v38 = (*v10) (v35, v36, v37);
history[history_index++] = (int)v38;
return 199999;
}
break;
case 3: 
{
signed int v39;
signed char v40;
float v41;
signed int v42;
v39=-199999;
v40='a';
v41=1.234;
v42 = (*v10) (v39, v40, v41);
history[history_index++] = (int)v42;
return 199999;
}
break;
case 1: 
{
float v43;
signed char v44;
v43=1.234;
v44 = (*v8) (v43);
history[history_index++] = (int)v44;
return 199999;
}
break;
default: abort ();
}
}
}
