#include <stdlib.h>
extern signed int v1 (signed int, signed char);
extern signed int (*v2) (signed int, signed char);
extern unsigned int v3 (unsigned int, signed short, signed short, unsigned char);
extern unsigned int (*v4) (unsigned int, signed short, signed short, unsigned char);
signed int v5 (unsigned int, unsigned char, signed short, unsigned char);
signed int (*v6) (unsigned int, unsigned char, signed short, unsigned char) = v5;
signed short v7 (double);
signed short (*v8) (double) = v7;
double v9 (void);
double (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

double v9 (void) {
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

signed short v7 (double v30) {
history[history_index++] = (int)v30;
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

signed int v5 (unsigned int v31, unsigned char v32, signed short v33, unsigned char v34) {
history[history_index++] = (int)v31;
history[history_index++] = (int)v32;
history[history_index++] = (int)v33;
history[history_index++] = (int)v34;
for (;;) {
trace++;
switch (trace) {
case 9: return -199999;
case 8: return -199999;
case 7: 
{
unsigned int v35;
unsigned char v36;
signed short v37;
unsigned char v38;
signed int v39;
v35=199999;
v36='A';
v37=-111;
v38='A';
v39 = v5 (v35, v36, v37, v38);
history[history_index++] = (int)v39;
return -199999;
}
break;
case 6: return -199999;
case 5: return -199999;
case 4: 
{
unsigned int v40;
unsigned char v41;
signed short v42;
unsigned char v43;
signed int v44;
v40=199999;
v41='A';
v42=-111;
v43='A';
v44 = v5 (v40, v41, v42, v43);
history[history_index++] = (int)v44;
return -199999;
}
break;
case 3: 
{
unsigned int v45;
unsigned char v46;
signed short v47;
unsigned char v48;
signed int v49;
v45=199999;
v46='A';
v47=-111;
v48='A';
v49 = v5 (v45, v46, v47, v48);
history[history_index++] = (int)v49;
return -199999;
}
break;
case 2: return -199999;
case 1: 
{
unsigned int v50;
unsigned char v51;
signed short v52;
unsigned char v53;
signed int v54;
v50=199999;
v51='A';
v52=-111;
v53='A';
v54 = (*v6) (v50, v51, v52, v53);
history[history_index++] = (int)v54;
return -199999;
}
break;
default: abort ();
}
}
}
