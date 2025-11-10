#include <stdlib.h>
extern unsigned short v1 (signed int, float, signed short, unsigned int);
extern unsigned short (*v2) (signed int, float, signed short, unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
unsigned char v5 (unsigned int, unsigned short, signed short, float);
unsigned char (*v6) (unsigned int, unsigned short, signed short, float) = v5;
signed short v7 (float);
signed short (*v8) (float) = v7;
signed int v9 (signed char, unsigned char);
signed int (*v10) (signed char, unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed int v9 (signed char v33, unsigned char v34) {
history[history_index++] = (int)v33;
history[history_index++] = (int)v34;
for (;;) {
trace++;
switch (trace) {
case 14: return -199999;
case 8: 
{
unsigned int v35;
unsigned short v36;
signed short v37;
float v38;
unsigned char v39;
v35=199999;
v36=111;
v37=-111;
v38=1.234;
v39 = (*v6) (v35, v36, v37, v38);
history[history_index++] = (int)v39;
return -199999;
}
break;
case 6: 
{
unsigned int v40;
unsigned short v41;
signed short v42;
float v43;
unsigned char v44;
v40=199999;
v41=111;
v42=-111;
v43=1.234;
v44 = v5 (v40, v41, v42, v43);
history[history_index++] = (int)v44;
return -199999;
}
break;
case 4: 
{
signed int v45;
float v46;
signed short v47;
unsigned int v48;
unsigned short v49;
v45=-199999;
v46=1.234;
v47=-111;
v48=199999;
v49 = (*v2) (v45, v46, v47, v48);
history[history_index++] = (int)v49;
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

signed short v7 (float v50) {
history[history_index++] = (int)v50;
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

unsigned char v5 (unsigned int v51, unsigned short v52, signed short v53, float v54) {
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
for (;;) {
trace++;
switch (trace) {
case 13: return 'A';
case 9: 
{
signed int v55;
v55 = (*v4) ();
history[history_index++] = (int)v55;
return 'A';
}
break;
case 7: return 'A';
case 1: return 'A';
default: abort ();
}
}
}
