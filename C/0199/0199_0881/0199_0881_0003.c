#include <stdlib.h>
signed char v1 (unsigned short, signed char);
signed char (*v2) (unsigned short, signed char) = v1;
extern signed char v3 (signed short, signed int, signed char);
extern signed char (*v4) (signed short, signed int, signed char);
signed short v5 (signed short, signed short);
signed short (*v6) (signed short, signed short) = v5;
static void v7 (unsigned short, unsigned short);
static void (*v8) (unsigned short, unsigned short) = v7;
extern signed int v9 (signed short, unsigned char, signed short);
extern signed int (*v10) (signed short, unsigned char, signed short);
extern signed short v11 (unsigned int, signed char);
extern signed short (*v12) (unsigned int, signed char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v17 (signed short);
extern signed char (*v18) (signed short);
signed char v19 (signed int, unsigned short, signed int, signed char);
signed char (*v20) (signed int, unsigned short, signed int, signed char) = v19;
extern signed short v21 (unsigned int, signed char, signed int, signed char);
extern signed short (*v22) (unsigned int, signed char, signed int, signed char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
unsigned char v25 (unsigned char, signed int);
unsigned char (*v26) (unsigned char, signed int) = v25;
extern signed short v27 (unsigned char);
extern signed short (*v28) (unsigned char);
extern unsigned int v29 (signed char, signed short);
extern unsigned int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v89 = 0;
signed int v88 = 0;
unsigned char v87 = 4;

unsigned char v25 (unsigned char v90, signed int v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = -1;
unsigned char v93 = 7;
unsigned short v92 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed int v95, unsigned short v96, signed int v97, signed char v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed int v101 = -1;
unsigned char v100 = 2;
unsigned char v99 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v7 (unsigned short v102, unsigned short v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = -4;
unsigned char v105 = 3;
unsigned short v104 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v107;
v107 = v15 ();
history[history_index++] = (int)v107;
}
break;
case 3: 
{
unsigned char v108;
v108 = v15 ();
history[history_index++] = (int)v108;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

signed short v5 (signed short v109, signed short v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 4;
signed char v112 = 2;
unsigned short v111 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned short v114, signed char v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = 0;
unsigned int v117 = 5U;
signed int v116 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v119;
unsigned short v120;
v119 = 5 + v114;
v120 = v114 + 7;
v7 (v119, v120);
}
break;
case 14: 
return -4;
default: abort ();
}
}
}
}
