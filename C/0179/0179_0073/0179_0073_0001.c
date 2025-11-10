#include <stdlib.h>
signed short v1 (double, double, signed short, double);
signed short (*v2) (double, double, signed short, double) = v1;
signed int v3 (signed short);
signed int (*v4) (signed short) = v3;
signed short v5 (float, double, signed char, float);
signed short (*v6) (float, double, signed char, float) = v5;
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
unsigned int v9 (unsigned short, unsigned char, float);
unsigned int (*v10) (unsigned short, unsigned char, float) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (unsigned short v16, unsigned char v17, float v18) {
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 9: return 199999;
case 7: return 199999;
case 1: return 199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v5 (float v19, double v20, signed char v21, float v22) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
for (;;) {
trace++;
switch (trace) {
case 11: return -111;
case 5: return -111;
case 3: 
{
double v23;
double v24;
signed short v25;
double v26;
signed short v27;
v23=111111.2222222;
v24=111111.2222222;
v25=-111;
v26=111111.2222222;
v27 = v1 (v23, v24, v25, v26);
history[history_index++] = (int)v27;
return -111;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v3 (signed short v28) {
history[history_index++] = (int)v28;
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

signed short v1 (double v29, double v30, signed short v31, double v32) {
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
history[history_index++] = (int)v31;
history[history_index++] = (int)v32;
for (;;) {
trace++;
switch (trace) {
case 12: return -111;
case 10: 
{
float v33;
double v34;
signed char v35;
float v36;
signed short v37;
v33=1.234;
v34=111111.2222222;
v35='a';
v36=1.234;
v37 = (*v6) (v33, v34, v35, v36);
history[history_index++] = (int)v37;
return -111;
}
break;
case 8: 
{
unsigned short v38;
unsigned char v39;
float v40;
unsigned int v41;
v38=111;
v39='A';
v40=1.234;
v41 = v9 (v38, v39, v40);
history[history_index++] = (int)v41;
return -111;
}
break;
case 6: 
{
unsigned short v42;
unsigned char v43;
float v44;
unsigned int v45;
v42=111;
v43='A';
v44=1.234;
v45 = (*v10) (v42, v43, v44);
history[history_index++] = (int)v45;
return -111;
}
break;
case 4: return -111;
case 2: 
{
float v46;
double v47;
signed char v48;
float v49;
signed short v50;
v46=1.234;
v47=111111.2222222;
v48='a';
v49=1.234;
v50 = (*v6) (v46, v47, v48, v49);
history[history_index++] = (int)v50;
return -111;
}
break;
case 0: 
{
unsigned short v51;
unsigned char v52;
float v53;
unsigned int v54;
v51=111;
v52='A';
v53=1.234;
v54 = v9 (v51, v52, v53);
history[history_index++] = (int)v54;
return -111;
}
break;
default: abort ();
}
}
}
