#include <stdlib.h>
unsigned short v1 (unsigned short, signed char);
unsigned short (*v2) (unsigned short, signed char) = v1;
extern unsigned char v3 (unsigned char, unsigned short);
extern unsigned char (*v4) (unsigned char, unsigned short);
unsigned char v5 (signed char, signed int);
unsigned char (*v6) (signed char, signed int) = v5;
static void v7 (signed short, unsigned int, signed char);
static void (*v8) (signed short, unsigned int, signed char) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
static unsigned short v11 (signed short);
static unsigned short (*v12) (signed short) = v11;
extern signed char v13 (signed char, unsigned short, unsigned short);
extern signed char (*v14) (signed char, unsigned short, unsigned short);
extern signed char v15 (signed char, signed char);
extern signed char (*v16) (signed char, signed char);
extern signed char v17 (signed short, unsigned char, unsigned int);
extern signed char (*v18) (signed short, unsigned char, unsigned int);
static signed int v19 (unsigned short, signed short, signed short, signed int);
static signed int (*v20) (unsigned short, signed short, signed short, signed int) = v19;
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (signed short);
extern unsigned int (*v24) (signed short);
unsigned char v25 (unsigned char, unsigned char, unsigned int, signed short);
unsigned char (*v26) (unsigned char, unsigned char, unsigned int, signed short) = v25;
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
extern signed char v29 (unsigned char, unsigned short, signed short);
extern signed char (*v30) (unsigned char, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v92 = -3;
unsigned short v91 = 4;
signed char v90 = -4;

unsigned char v25 (unsigned char v93, unsigned char v94, unsigned int v95, signed short v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = -4;
unsigned char v98 = 2;
signed int v97 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v19 (unsigned short v100, signed short v101, signed short v102, signed int v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 4;
unsigned short v105 = 5;
unsigned short v104 = 2;
trace++;
switch (trace)
{
case 1: 
return -4;
default: abort ();
}
}
}
}

static unsigned short v11 (signed short v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
unsigned int v110 = 5U;
unsigned short v109 = 7;
unsigned short v108 = 6;
trace++;
switch (trace)
{
case 10: 
return 5;
default: abort ();
}
}
}
}

static void v7 (signed short v111, unsigned int v112, signed char v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 7;
signed short v115 = -2;
unsigned char v114 = 0;
trace++;
switch (trace)
{
case 7: 
{
signed short v117;
unsigned char v118;
unsigned int v119;
signed char v120;
v117 = 0 - v115;
v118 = v116 - v116;
v119 = 0U + 2U;
v120 = v17 (v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 9: 
{
signed short v121;
unsigned short v122;
v121 = v115 - v111;
v122 = v11 (v121);
history[history_index++] = (int)v122;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned char v5 (signed char v123, signed int v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 4U;
unsigned int v126 = 6U;
signed int v125 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned short v128, signed char v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed short v132 = -4;
unsigned short v131 = 4;
signed int v130 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v133;
signed short v134;
signed short v135;
signed int v136;
signed int v137;
v133 = v131 - 7;
v134 = v132 + -1;
v135 = -1 + -3;
v136 = -3 - -2;
v137 = v19 (v133, v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 2: 
{
signed short v138;
v138 = v9 ();
history[history_index++] = (int)v138;
}
break;
case 4: 
{
v21 ();
}
break;
case 6: 
{
signed short v139;
unsigned int v140;
signed char v141;
v139 = v132 + 0;
v140 = 6U + 4U;
v141 = -1 + v129;
v7 (v139, v140, v141);
}
break;
case 12: 
return v131;
default: abort ();
}
}
}
}
