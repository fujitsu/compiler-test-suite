#include <stdlib.h>
unsigned short v1 (signed int, unsigned char);
unsigned short (*v2) (signed int, unsigned char) = v1;
extern signed int v3 (unsigned char, unsigned int, signed char);
extern signed int (*v4) (unsigned char, unsigned int, signed char);
unsigned int v5 (signed short);
unsigned int (*v6) (signed short) = v5;
extern unsigned char v7 (signed int, unsigned short, signed char);
extern unsigned char (*v8) (signed int, unsigned short, signed char);
extern unsigned int v9 (unsigned int);
extern unsigned int (*v10) (unsigned int);
unsigned char v11 (unsigned int, signed char);
unsigned char (*v12) (unsigned int, signed char) = v11;
extern signed int v13 (signed int, unsigned char, signed short);
extern signed int (*v14) (signed int, unsigned char, signed short);
extern unsigned short v15 (unsigned short, signed int, signed short);
extern unsigned short (*v16) (unsigned short, signed int, signed short);
signed short v17 (unsigned char, signed short, unsigned int);
signed short (*v18) (unsigned char, signed short, unsigned int) = v17;
extern signed char v19 (unsigned int, signed short, unsigned int, unsigned int);
extern signed char (*v20) (unsigned int, signed short, unsigned int, unsigned int);
static signed char v21 (void);
static signed char (*v22) (void) = v21;
extern signed int v23 (unsigned short);
extern signed int (*v24) (unsigned short);
signed char v25 (unsigned char, signed int, signed char, signed int);
signed char (*v26) (unsigned char, signed int, signed char, signed int) = v25;
extern void v27 (signed int, unsigned char, signed char);
extern void (*v28) (signed int, unsigned char, signed char);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v80 = 0;
signed char v79 = -1;
unsigned short v78 = 5;

signed char v25 (unsigned char v81, signed int v82, signed char v83, signed int v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = -3;
unsigned int v86 = 4U;
unsigned int v85 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v21 (void)
{
{
for (;;) {
signed short v90 = -1;
signed int v89 = 2;
unsigned short v88 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v91;
v91 = 2 + 2;
v29 (v91);
}
break;
case 3: 
{
signed int v92;
unsigned char v93;
signed char v94;
v92 = v89 + v89;
v93 = 7 + 5;
v94 = 2 + 1;
v27 (v92, v93, v94);
}
break;
case 5: 
{
signed char v95;
v95 = 3 + -1;
v29 (v95);
}
break;
case 7: 
{
signed char v96;
v96 = 3 + -2;
v29 (v96);
}
break;
case 9: 
{
signed int v97;
unsigned char v98;
signed char v99;
v97 = 0 + 2;
v98 = 2 + 3;
v99 = -1 + 3;
v27 (v97, v98, v99);
}
break;
case 11: 
return -1;
default: abort ();
}
}
}
}

signed short v17 (unsigned char v100, signed short v101, unsigned int v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = 3;
signed short v104 = 0;
unsigned char v103 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v106, signed char v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 4;
signed short v109 = -3;
unsigned char v108 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed short v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed short v114 = 1;
signed int v113 = 1;
signed char v112 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed int v115, unsigned char v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = -2;
unsigned int v118 = 7U;
unsigned short v117 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v120;
v120 = v21 ();
history[history_index++] = (int)v120;
}
break;
case 12: 
return v117;
default: abort ();
}
}
}
}
