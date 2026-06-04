#include <stdlib.h>
signed char v1 (unsigned short, unsigned int, signed short);
signed char (*v2) (unsigned short, unsigned int, signed short) = v1;
signed int v3 (signed short);
signed int (*v4) (signed short) = v3;
unsigned int v5 (unsigned short, signed int);
unsigned int (*v6) (unsigned short, signed int) = v5;
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern unsigned char v9 (signed char, unsigned short, unsigned char);
extern unsigned char (*v10) (signed char, unsigned short, unsigned char);
static void v11 (signed int, unsigned int, unsigned char, signed int);
static void (*v12) (signed int, unsigned int, unsigned char, signed int) = v11;
extern unsigned int v13 (unsigned int, signed char, signed int);
extern unsigned int (*v14) (unsigned int, signed char, signed int);
extern signed int v15 (signed int);
extern signed int (*v16) (signed int);
extern unsigned short v17 (signed short);
extern unsigned short (*v18) (signed short);
extern unsigned short v19 (signed char, signed short);
extern unsigned short (*v20) (signed char, signed short);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern signed short v23 (signed int, signed char, signed char, signed short);
extern signed short (*v24) (signed int, signed char, signed char, signed short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned char v29 (unsigned char);
extern unsigned char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v96 = 1;
signed char v95 = 2;
unsigned char v94 = 4;

unsigned short v21 (void)
{
{
for (;;) {
signed short v99 = 3;
unsigned char v98 = 0;
unsigned short v97 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v11 (signed int v100, unsigned int v101, unsigned char v102, signed int v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = -2;
unsigned int v105 = 7U;
unsigned int v104 = 0U;
trace++;
switch (trace)
{
case 1: 
{
signed short v107;
unsigned short v108;
v107 = -3 + v106;
v108 = v17 (v107);
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

unsigned int v5 (unsigned short v109, signed int v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = -1;
signed char v112 = -4;
signed char v111 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed short v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = 3;
unsigned short v116 = 0;
signed int v115 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned short v118, unsigned int v119, signed short v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned short v123 = 7;
unsigned short v122 = 2;
unsigned short v121 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed int v124;
unsigned int v125;
unsigned char v126;
signed int v127;
v124 = -2 - -3;
v125 = v119 + v119;
v126 = 3 - 5;
v127 = -4 + 1;
v11 (v124, v125, v126, v127);
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
