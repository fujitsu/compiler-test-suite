#include <stdlib.h>
signed short v1 (signed int, signed char);
signed short (*v2) (signed int, signed char) = v1;
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
extern unsigned char v5 (unsigned char, unsigned short, unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned char, unsigned short, unsigned char, unsigned char);
extern signed short v7 (unsigned short, signed short, unsigned char, unsigned short);
extern signed short (*v8) (unsigned short, signed short, unsigned char, unsigned short);
extern unsigned char v9 (unsigned int, unsigned int, unsigned short);
extern unsigned char (*v10) (unsigned int, unsigned int, unsigned short);
unsigned char v11 (unsigned char, unsigned short, unsigned short, unsigned short);
unsigned char (*v12) (unsigned char, unsigned short, unsigned short, unsigned short) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern void v15 (signed short, unsigned char);
extern void (*v16) (signed short, unsigned char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
unsigned int v19 (signed short, signed char, signed char, unsigned char);
unsigned int (*v20) (signed short, signed char, signed char, unsigned char) = v19;
extern void v21 (signed char, signed int, signed char);
extern void (*v22) (signed char, signed int, signed char);
extern unsigned short v23 (signed short, signed int, unsigned int, signed short);
extern unsigned short (*v24) (signed short, signed int, unsigned int, signed short);
signed char v25 (signed int, unsigned short, unsigned char);
signed char (*v26) (signed int, unsigned short, unsigned char) = v25;
signed char v27 (signed int, signed char, signed int);
signed char (*v28) (signed int, signed char, signed int) = v27;
extern void v29 (signed char, signed char, unsigned char, signed int);
extern void (*v30) (signed char, signed char, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v58 = 0;
signed short v57 = 2;
unsigned short v56 = 7;

signed char v27 (signed int v59, signed char v60, signed int v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = -4;
unsigned int v63 = 0U;
unsigned short v62 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (signed int v65, unsigned short v66, unsigned char v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned short v70 = 4;
unsigned short v69 = 7;
unsigned char v68 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed short v71, signed char v72, signed char v73, unsigned char v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 4;
signed char v76 = -4;
unsigned char v75 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned char v78, unsigned short v79, unsigned short v80, unsigned short v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 6U;
signed short v83 = -2;
unsigned int v82 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v85, signed char v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned short v89 = 1;
unsigned char v88 = 7;
unsigned int v87 = 4U;
trace++;
switch (trace)
{
case 0: 
return -1;
case 1: 
{
signed char v90;
signed int v91;
signed char v92;
v90 = v86 + 2;
v91 = v85 + v85;
v92 = v86 - v86;
v21 (v90, v91, v92);
}
break;
case 3: 
{
unsigned short v93;
signed short v94;
unsigned char v95;
unsigned short v96;
signed short v97;
v93 = v89 + v89;
v94 = -4 - -2;
v95 = 4 - v88;
v96 = 5 + 7;
v97 = v7 (v93, v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}
