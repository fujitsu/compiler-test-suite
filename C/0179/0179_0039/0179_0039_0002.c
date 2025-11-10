#include <stdlib.h>
extern double v1 (unsigned char);
extern double (*v2) (unsigned char);
extern signed short v3 (void);
extern signed short (*v4) (void);
unsigned int v5 (unsigned char, unsigned short);
unsigned int (*v6) (unsigned char, unsigned short) = v5;
extern signed short v7 (double, double, signed short);
extern signed short (*v8) (double, double, signed short);
signed int v9 (float, signed int, float);
signed int (*v10) (float, signed int, float) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed int v9 (float v28, signed int v29, float v30) {
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
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

unsigned int v5 (unsigned char v31, unsigned short v32) {
history[history_index++] = (int)v31;
history[history_index++] = (int)v32;
for (;;) {
trace++;
switch (trace) {
case 17: return 199999;
case 16: return 199999;
case 15: return 199999;
case 14: return 199999;
case 8: 
{
double v33;
double v34;
signed short v35;
signed short v36;
v33=111111.2222222;
v34=111111.2222222;
v35=-111;
v36 = (*v8) (v33, v34, v35);
history[history_index++] = (int)v36;
return 199999;
}
break;
case 7: 
{
unsigned char v37;
unsigned short v38;
unsigned int v39;
v37='A';
v38=111;
v39 = v5 (v37, v38);
history[history_index++] = (int)v39;
return 199999;
}
break;
case 6: 
{
unsigned char v40;
unsigned short v41;
unsigned int v42;
v40='A';
v41=111;
v42 = (*v6) (v40, v41);
history[history_index++] = (int)v42;
return 199999;
}
break;
case 5: 
{
unsigned char v43;
unsigned short v44;
unsigned int v45;
v43='A';
v44=111;
v45 = v5 (v43, v44);
history[history_index++] = (int)v45;
return 199999;
}
break;
case 3: 
{
double v46;
double v47;
signed short v48;
signed short v49;
v46=111111.2222222;
v47=111111.2222222;
v48=-111;
v49 = (*v8) (v46, v47, v48);
history[history_index++] = (int)v49;
return 199999;
}
break;
case 1: return 199999;
default: abort ();
}
}
}
