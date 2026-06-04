#include <stdlib.h>
signed int v1 (unsigned char, signed short, unsigned int, unsigned short);
signed int (*v2) (unsigned char, signed short, unsigned int, unsigned short) = v1;
extern signed int v3 (unsigned char, unsigned short, signed char, signed short);
extern signed int (*v4) (unsigned char, unsigned short, signed char, signed short);
extern unsigned int v5 (signed char, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v6) (signed char, unsigned int, unsigned int, unsigned int);
static signed short v7 (unsigned short, unsigned int);
static signed short (*v8) (unsigned short, unsigned int) = v7;
signed int v9 (signed char, unsigned int, unsigned int, signed char);
signed int (*v10) (signed char, unsigned int, unsigned int, signed char) = v9;
extern unsigned int v11 (unsigned short, unsigned char);
extern unsigned int (*v12) (unsigned short, unsigned char);
extern unsigned char v13 (unsigned short, signed short, signed int);
extern unsigned char (*v14) (unsigned short, signed short, signed int);
extern signed short v15 (unsigned int, unsigned char, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char, unsigned char);
extern unsigned int v17 (unsigned short);
extern unsigned int (*v18) (unsigned short);
extern signed int v19 (unsigned int, signed char, signed int, signed char);
extern signed int (*v20) (unsigned int, signed char, signed int, signed char);
extern signed char v21 (signed char, unsigned short);
extern signed char (*v22) (signed char, unsigned short);
void v23 (unsigned int, unsigned short);
void (*v24) (unsigned int, unsigned short) = v23;
static signed short v25 (signed char, signed char, signed short, unsigned int);
static signed short (*v26) (signed char, signed char, signed short, unsigned int) = v25;
extern unsigned char v27 (signed int, signed short, signed short);
extern unsigned char (*v28) (signed int, signed short, signed short);
extern void v29 (signed int, unsigned short, unsigned int, signed short);
extern void (*v30) (signed int, unsigned short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v89 = 7;
signed char v88 = -1;
unsigned short v87 = 6;

static signed short v25 (signed char v90, signed char v91, signed short v92, unsigned int v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = 2;
signed char v95 = 2;
signed char v94 = -2;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v97;
unsigned int v98;
signed short v99;
v97 = 6 + 7;
v98 = v93 + v93;
v99 = v7 (v97, v98);
history[history_index++] = (int)v99;
}
break;
case 7: 
{
unsigned short v100;
unsigned int v101;
signed short v102;
v100 = 0 + 7;
v101 = 3U + v93;
v102 = v7 (v100, v101);
history[history_index++] = (int)v102;
}
break;
case 9: 
{
unsigned short v103;
unsigned int v104;
signed short v105;
v103 = 4 + 0;
v104 = v93 - 4U;
v105 = v7 (v103, v104);
history[history_index++] = (int)v105;
}
break;
case 13: 
return v96;
default: abort ();
}
}
}
}

void v23 (unsigned int v106, unsigned short v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 2;
signed int v109 = 1;
unsigned char v108 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed char v111, unsigned int v112, unsigned int v113, signed char v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 4;
signed char v116 = -4;
unsigned char v115 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v7 (unsigned short v118, unsigned int v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = -4;
unsigned short v121 = 7;
unsigned char v120 = 6;
trace++;
switch (trace)
{
case 6: 
return v122;
case 8: 
return v122;
case 10: 
{
signed char v123;
unsigned short v124;
signed char v125;
v123 = 0 + -2;
v124 = v121 - v121;
v125 = v21 (v123, v124);
history[history_index++] = (int)v125;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}

signed int v1 (unsigned char v126, signed short v127, unsigned int v128, unsigned short v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 6;
unsigned short v131 = 1;
signed short v130 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed int v133;
signed short v134;
signed short v135;
unsigned char v136;
v133 = 1 - -2;
v134 = -4 - -2;
v135 = v127 + 0;
v136 = v27 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 4: 
{
signed char v137;
signed char v138;
signed short v139;
unsigned int v140;
signed short v141;
v137 = -2 - -1;
v138 = 1 + 2;
v139 = -4 + -2;
v140 = v128 - 1U;
v141 = v25 (v137, v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
