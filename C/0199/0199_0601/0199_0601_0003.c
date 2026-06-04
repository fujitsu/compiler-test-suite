#include <stdlib.h>
signed char v1 (signed char);
signed char (*v2) (signed char) = v1;
extern unsigned char v3 (unsigned short, signed short, signed char);
extern unsigned char (*v4) (unsigned short, signed short, signed char);
extern unsigned char v5 (unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned char, unsigned char);
extern unsigned short v7 (signed int, signed int);
extern unsigned short (*v8) (signed int, signed int);
signed char v9 (unsigned char, signed int, unsigned char);
signed char (*v10) (unsigned char, signed int, unsigned char) = v9;
extern signed char v11 (signed short, unsigned short, unsigned short, signed char);
extern signed char (*v12) (signed short, unsigned short, unsigned short, signed char);
static void v13 (signed short, unsigned short, unsigned char, unsigned char);
static void (*v14) (signed short, unsigned short, unsigned char, unsigned char) = v13;
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
extern unsigned char v17 (signed short, unsigned char, signed int, signed char);
extern unsigned char (*v18) (signed short, unsigned char, signed int, signed char);
static unsigned int v19 (void);
static unsigned int (*v20) (void) = v19;
unsigned char v21 (signed short);
unsigned char (*v22) (signed short) = v21;
extern unsigned int v23 (signed char, unsigned char, unsigned short, unsigned short);
extern unsigned int (*v24) (signed char, unsigned char, unsigned short, unsigned short);
extern unsigned char v25 (signed short);
extern unsigned char (*v26) (signed short);
extern signed short v27 (unsigned char, signed char, signed char, unsigned short);
extern signed short (*v28) (unsigned char, signed char, signed char, unsigned short);
static signed char v29 (unsigned int, unsigned int, unsigned int, unsigned int);
static signed char (*v30) (unsigned int, unsigned int, unsigned int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v87 = 1;
signed int v86 = -4;
unsigned short v85 = 2;

static signed char v29 (unsigned int v88, unsigned int v89, unsigned int v90, unsigned int v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = -4;
unsigned short v93 = 4;
signed int v92 = -1;
trace++;
switch (trace)
{
case 9: 
return 3;
default: abort ();
}
}
}
}

unsigned char v21 (signed short v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = 1;
signed short v97 = 0;
unsigned short v96 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v19 (void)
{
{
for (;;) {
unsigned short v101 = 1;
signed short v100 = 1;
signed int v99 = -4;
trace++;
switch (trace)
{
case 1: 
return 5U;
default: abort ();
}
}
}
}

static void v13 (signed short v102, unsigned short v103, unsigned char v104, unsigned char v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 6U;
signed short v107 = 2;
signed int v106 = -2;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v109;
unsigned int v110;
unsigned int v111;
unsigned int v112;
signed char v113;
v109 = 2U + 0U;
v110 = v108 - v108;
v111 = 4U + 1U;
v112 = 6U - v108;
v113 = v29 (v109, v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 10: 
{
signed char v114;
unsigned char v115;
unsigned short v116;
unsigned short v117;
unsigned int v118;
v114 = 1 + -4;
v115 = v104 + 7;
v116 = v103 - v103;
v117 = v103 - v103;
v118 = v23 (v114, v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed char v9 (unsigned char v119, signed int v120, unsigned char v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 5;
signed short v123 = 0;
signed char v122 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed char v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
unsigned short v128 = 7;
unsigned short v127 = 0;
unsigned short v126 = 4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v129;
v129 = v19 ();
history[history_index++] = (int)v129;
}
break;
case 2: 
{
unsigned char v130;
signed char v131;
signed char v132;
unsigned short v133;
signed short v134;
v130 = 6 - 7;
v131 = v125 - v125;
v132 = v125 - v125;
v133 = v128 + v127;
v134 = v27 (v130, v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 4: 
{
unsigned char v135;
unsigned char v136;
unsigned char v137;
v135 = 4 - 6;
v136 = 5 + 2;
v137 = v5 (v135, v136);
history[history_index++] = (int)v137;
}
break;
case 6: 
return -3;
case 7: 
{
signed short v138;
unsigned short v139;
unsigned char v140;
unsigned char v141;
v138 = 0 - 3;
v139 = v126 - v128;
v140 = 5 - 7;
v141 = 0 + 6;
v13 (v138, v139, v140, v141);
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}
