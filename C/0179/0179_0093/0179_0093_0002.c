#include <stdlib.h>
extern unsigned short v1 (signed char, signed char, signed short, signed short);
extern unsigned short (*v2) (signed char, signed char, signed short, signed short);
float v3 (unsigned short, unsigned short, signed int, unsigned char);
float (*v4) (unsigned short, unsigned short, signed int, unsigned char) = v3;
extern unsigned int v5 (signed int, float, signed short, signed int);
extern unsigned int (*v6) (signed int, float, signed short, signed int);
signed short v7 (unsigned int);
signed short (*v8) (unsigned int) = v7;
double v9 (unsigned char, float, unsigned short);
double (*v10) (unsigned char, float, unsigned short) = v9;
extern int history[];
extern int history_index;
extern int trace;

double v9 (unsigned char v29, float v30, unsigned short v31) {
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
history[history_index++] = (int)v31;
for (;;) {
trace++;
switch (trace) {
case 11: return 111111.2222222;
case 9: return 111111.2222222;
case 7: 
{
signed int v32;
float v33;
signed short v34;
signed int v35;
unsigned int v36;
v32=-199999;
v33=1.234;
v34=-111;
v35=-199999;
v36 = v5 (v32, v33, v34, v35);
history[history_index++] = (int)v36;
return 111111.2222222;
}
break;
case 2: return 111111.2222222;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v7 (unsigned int v37) {
history[history_index++] = (int)v37;
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

float v3 (unsigned short v38, unsigned short v39, signed int v40, unsigned char v41) {
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
for (;;) {
trace++;
switch (trace) {
case 15: return 1.234;
case 14: return 1.234;
case 13: return 1.234;
case 12: return 1.234;
case 10: 
{
unsigned char v42;
float v43;
unsigned short v44;
double v45;
v42='A';
v43=1.234;
v44=111;
v45 = (*v10) (v42, v43, v44);
history[history_index++] = (int)v45;
return 1.234;
}
break;
case 6: 
{
unsigned char v46;
float v47;
unsigned short v48;
double v49;
v46='A';
v47=1.234;
v48=111;
v49 = (*v10) (v46, v47, v48);
history[history_index++] = (int)v49;
return 1.234;
}
break;
case 5: 
{
unsigned short v50;
unsigned short v51;
signed int v52;
unsigned char v53;
float v54;
v50=111;
v51=111;
v52=-199999;
v53='A';
v54 = (*v4) (v50, v51, v52, v53);
history[history_index++] = (int)v54;
return 1.234;
}
break;
case 4: 
{
unsigned short v55;
unsigned short v56;
signed int v57;
unsigned char v58;
float v59;
v55=111;
v56=111;
v57=-199999;
v58='A';
v59 = v3 (v55, v56, v57, v58);
history[history_index++] = (int)v59;
return 1.234;
}
break;
case 3: 
{
unsigned short v60;
unsigned short v61;
signed int v62;
unsigned char v63;
float v64;
v60=111;
v61=111;
v62=-199999;
v63='A';
v64 = (*v4) (v60, v61, v62, v63);
history[history_index++] = (int)v64;
return 1.234;
}
break;
case 1: 
{
unsigned char v65;
float v66;
unsigned short v67;
double v68;
v65='A';
v66=1.234;
v67=111;
v68 = v9 (v65, v66, v67);
history[history_index++] = (int)v68;
return 1.234;
}
break;
default: abort ();
}
}
}
