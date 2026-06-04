#include <stdlib.h>
unsigned short v1 (signed char, unsigned char, signed short);
unsigned short (*v2) (signed char, unsigned char, signed short) = v1;
static void v3 (signed char);
static void (*v4) (signed char) = v3;
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern signed int v7 (signed short);
extern signed int (*v8) (signed short);
extern signed char v9 (unsigned short, unsigned short, signed short);
extern signed char (*v10) (unsigned short, unsigned short, signed short);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern unsigned short v15 (signed char, signed char);
extern unsigned short (*v16) (signed char, signed char);
signed char v17 (signed short, unsigned char, unsigned int);
signed char (*v18) (signed short, unsigned char, unsigned int) = v17;
static unsigned char v19 (unsigned char);
static unsigned char (*v20) (unsigned char) = v19;
extern void v21 (unsigned char, signed char, signed int, unsigned char);
extern void (*v22) (unsigned char, signed char, signed int, unsigned char);
static signed short v23 (unsigned int, signed short, unsigned short);
static signed short (*v24) (unsigned int, signed short, unsigned short) = v23;
signed int v25 (unsigned char, unsigned short, unsigned char, unsigned int);
signed int (*v26) (unsigned char, unsigned short, unsigned char, unsigned int) = v25;
extern unsigned char v27 (signed short, signed short);
extern unsigned char (*v28) (signed short, signed short);
signed short v29 (unsigned int, signed char, unsigned short, unsigned short);
signed short (*v30) (unsigned int, signed char, unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v82 = 4;
unsigned int v81 = 4U;
signed short v80 = 1;

signed short v29 (unsigned int v83, signed char v84, unsigned short v85, unsigned short v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 4U;
unsigned char v88 = 1;
signed short v87 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (unsigned char v90, unsigned short v91, unsigned char v92, unsigned int v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 7U;
unsigned char v95 = 2;
unsigned short v94 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v23 (unsigned int v97, signed short v98, unsigned short v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 1U;
unsigned char v101 = 4;
signed char v100 = -3;
trace++;
switch (trace)
{
case 4: 
return 2;
case 6: 
return 2;
case 10: 
return -4;
default: abort ();
}
}
}
}

static unsigned char v19 (unsigned char v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = 0;
signed char v105 = -1;
unsigned int v104 = 7U;
trace++;
switch (trace)
{
case 8: 
return v103;
default: abort ();
}
}
}
}

signed char v17 (signed short v107, unsigned char v108, unsigned int v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 6;
signed char v111 = 3;
signed short v110 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v113;
signed short v114;
unsigned short v115;
signed short v116;
v113 = v109 - v109;
v114 = v110 + v110;
v115 = 4 - 4;
v116 = v23 (v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 5: 
{
unsigned int v117;
signed short v118;
unsigned short v119;
signed short v120;
v117 = v109 - v109;
v118 = 2 - 2;
v119 = 7 + 2;
v120 = v23 (v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 7: 
{
unsigned char v121;
unsigned char v122;
v121 = v112 - v112;
v122 = v19 (v121);
history[history_index++] = (int)v122;
}
break;
case 9: 
{
unsigned int v123;
signed short v124;
unsigned short v125;
signed short v126;
v123 = v109 + v109;
v124 = v107 - v107;
v125 = 3 + 7;
v126 = v23 (v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 11: 
return v111;
default: abort ();
}
}
}
}

static void v3 (signed char v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = 0;
unsigned short v129 = 2;
signed int v128 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed char v131;
unsigned short v132;
v131 = v130 + v130;
v132 = v13 (v131);
history[history_index++] = (int)v132;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned short v1 (signed char v133, unsigned char v134, signed short v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned char v138 = 3;
unsigned short v137 = 5;
signed char v136 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed char v139;
v139 = v133 - v136;
v3 (v139);
}
break;
case 14: 
return v137;
default: abort ();
}
}
}
}
