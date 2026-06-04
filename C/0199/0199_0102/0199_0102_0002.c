#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
void v5 (signed short, unsigned short, unsigned short);
void (*v6) (signed short, unsigned short, unsigned short) = v5;
extern void v7 (signed char, signed int, unsigned int);
extern void (*v8) (signed char, signed int, unsigned int);
extern signed short v9 (unsigned char, unsigned int, signed char, signed char);
extern signed short (*v10) (unsigned char, unsigned int, signed char, signed char);
extern signed int v11 (signed char);
extern signed int (*v12) (signed char);
extern unsigned char v13 (unsigned char, unsigned char, unsigned short);
extern unsigned char (*v14) (unsigned char, unsigned char, unsigned short);
extern unsigned short v15 (signed short, signed char, unsigned short, signed short);
extern unsigned short (*v16) (signed short, signed char, unsigned short, signed short);
extern signed char v17 (unsigned short, signed char, unsigned char);
extern signed char (*v18) (unsigned short, signed char, unsigned char);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
signed short v21 (signed char, unsigned short, signed char, unsigned int);
signed short (*v22) (signed char, unsigned short, signed char, unsigned int) = v21;
unsigned short v23 (signed short, signed int, unsigned short, signed char);
unsigned short (*v24) (signed short, signed int, unsigned short, signed char) = v23;
extern unsigned short v25 (unsigned char);
extern unsigned short (*v26) (unsigned char);
signed char v27 (signed short, signed int);
signed char (*v28) (signed short, signed int) = v27;
signed int v29 (unsigned char, unsigned int, unsigned int);
signed int (*v30) (unsigned char, unsigned int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v55 = 2;
signed int v54 = -3;
unsigned int v53 = 0U;

signed int v29 (unsigned char v56, unsigned int v57, unsigned int v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 2;
signed short v60 = 0;
unsigned char v59 = 0;
trace++;
switch (trace)
{
case 9: 
return -4;
case 11: 
return -1;
default: abort ();
}
}
}
}

signed char v27 (signed short v62, signed int v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned char v66 = 3;
signed char v65 = -3;
signed short v64 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (signed short v67, signed int v68, unsigned short v69, signed char v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 0;
signed int v72 = 3;
unsigned short v71 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed char v74, unsigned short v75, signed char v76, unsigned int v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 0;
unsigned short v79 = 3;
unsigned short v78 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed short v81, unsigned short v82, unsigned short v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 2;
unsigned char v85 = 4;
unsigned int v84 = 4U;
trace++;
switch (trace)
{
case 1: 
{
signed short v87;
signed char v88;
unsigned short v89;
signed short v90;
unsigned short v91;
v87 = 3 - v81;
v88 = -1 + 0;
v89 = v82 + v83;
v90 = v81 + v81;
v91 = v15 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 3: 
{
unsigned char v92;
unsigned short v93;
v92 = v85 + v85;
v93 = v25 (v92);
history[history_index++] = (int)v93;
}
break;
case 5: 
{
unsigned short v94;
signed char v95;
unsigned char v96;
signed char v97;
v94 = v82 - v82;
v95 = -3 + -1;
v96 = v85 - 6;
v97 = v17 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
