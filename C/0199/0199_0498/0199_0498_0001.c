#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned char, signed int);
extern unsigned short (*v2) (unsigned char, unsigned char, signed int);
signed char v3 (unsigned short);
signed char (*v4) (unsigned short) = v3;
extern signed short v5 (signed short, signed short, unsigned int, unsigned char);
extern signed short (*v6) (signed short, signed short, unsigned int, unsigned char);
signed char v7 (signed short, signed short, signed char, signed char);
signed char (*v8) (signed short, signed short, signed char, signed char) = v7;
extern signed short v9 (unsigned char, signed char);
extern signed short (*v10) (unsigned char, signed char);
extern signed short v11 (signed int, signed short);
extern signed short (*v12) (signed int, signed short);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
unsigned short v15 (signed int);
unsigned short (*v16) (signed int) = v15;
void v17 (unsigned char, unsigned short, unsigned char);
void (*v18) (unsigned char, unsigned short, unsigned char) = v17;
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned short v21 (unsigned short, signed short);
extern unsigned short (*v22) (unsigned short, signed short);
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
signed int v25 (signed char, unsigned char, unsigned short);
signed int (*v26) (signed char, unsigned char, unsigned short) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned int v29 (signed short, unsigned char);
extern unsigned int (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v57 = 6U;
signed char v56 = 3;
signed short v55 = 0;

signed int v25 (signed char v58, unsigned char v59, unsigned short v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 7;
signed short v62 = -3;
signed short v61 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned char v64, unsigned short v65, unsigned char v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 3;
unsigned char v68 = 7;
unsigned char v67 = 4;
trace++;
switch (trace)
{
case 8: 
{
signed int v70;
signed short v71;
signed short v72;
v70 = -2 - -1;
v71 = 0 + -3;
v72 = v11 (v70, v71);
history[history_index++] = (int)v72;
}
break;
case 10: 
{
signed int v73;
signed short v74;
signed short v75;
v73 = -4 + -3;
v74 = -1 + -4;
v75 = v11 (v73, v74);
history[history_index++] = (int)v75;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned short v15 (signed int v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 3U;
signed char v78 = -2;
signed char v77 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed short v80, signed short v81, signed char v82, signed char v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed int v86 = 1;
unsigned short v85 = 7;
unsigned char v84 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v87;
signed short v88;
unsigned short v89;
v87 = v85 + 4;
v88 = v80 + v81;
v89 = v21 (v87, v88);
history[history_index++] = (int)v89;
}
break;
case 3: 
return v82;
case 5: 
{
unsigned short v90;
signed short v91;
unsigned short v92;
v90 = 2 + v85;
v91 = v80 + v81;
v92 = v21 (v90, v91);
history[history_index++] = (int)v92;
}
break;
case 15: 
return v83;
default: abort ();
}
}
}
}

signed char v3 (unsigned short v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
unsigned char v96 = 1;
unsigned short v95 = 2;
unsigned char v94 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
