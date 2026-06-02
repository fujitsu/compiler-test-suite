#include <stdlib.h>
extern unsigned int v1 (signed char);
extern unsigned int (*v2) (signed char);
extern unsigned short v3 (unsigned char, unsigned char);
extern unsigned short (*v4) (unsigned char, unsigned char);
extern signed short v5 (unsigned short, unsigned int, unsigned short);
extern signed short (*v6) (unsigned short, unsigned int, unsigned short);
unsigned int v7 (signed char, signed int);
unsigned int (*v8) (signed char, signed int) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed int v11 (signed char, signed char);
extern signed int (*v12) (signed char, signed char);
static unsigned int v13 (signed int);
static unsigned int (*v14) (signed int) = v13;
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
signed short v21 (unsigned char, signed short, signed char, signed char);
signed short (*v22) (unsigned char, signed short, signed char, signed char) = v21;
extern void v23 (unsigned short, unsigned int);
extern void (*v24) (unsigned short, unsigned int);
signed short v25 (unsigned char, unsigned int, signed char, signed char);
signed short (*v26) (unsigned char, unsigned int, signed char, signed char) = v25;
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
static unsigned short v29 (unsigned int, signed int);
static unsigned short (*v30) (unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v94 = -3;
signed int v93 = -2;
signed short v92 = -2;

static unsigned short v29 (unsigned int v95, signed int v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 1;
signed char v98 = 1;
signed char v97 = 0;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v100;
v100 = v19 ();
history[history_index++] = (int)v100;
}
break;
case 5: 
{
unsigned short v101;
v101 = v19 ();
history[history_index++] = (int)v101;
}
break;
case 9: 
{
unsigned short v102;
v102 = v19 ();
history[history_index++] = (int)v102;
}
break;
case 13: 
return v99;
default: abort ();
}
}
}
}

unsigned int v27 (void)
{
{
for (;;) {
unsigned int v105 = 4U;
signed short v104 = 2;
unsigned short v103 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (unsigned char v106, unsigned int v107, signed char v108, signed char v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 5;
signed int v111 = -4;
signed char v110 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (unsigned char v113, signed short v114, signed char v115, signed char v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned short v119 = 6;
signed char v118 = -4;
unsigned char v117 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v13 (signed int v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
unsigned int v123 = 4U;
unsigned char v122 = 4;
unsigned short v121 = 4;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v124;
signed int v125;
unsigned short v126;
v124 = v123 - v123;
v125 = 0 - v120;
v126 = v29 (v124, v125);
history[history_index++] = (int)v126;
}
break;
case 14: 
return 1U;
default: abort ();
}
}
}
}

unsigned int v7 (signed char v127, signed int v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = 2;
signed int v130 = 1;
unsigned short v129 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed int v132;
unsigned int v133;
v132 = v128 - v130;
v133 = v13 (v132);
history[history_index++] = (int)v133;
}
break;
case 15: 
return 7U;
default: abort ();
}
}
}
}
