#include <stdlib.h>
signed int v1 (unsigned char, signed int, signed short, unsigned short);
signed int (*v2) (unsigned char, signed int, signed short, unsigned short) = v1;
extern unsigned int v3 (signed short, unsigned char);
extern unsigned int (*v4) (signed short, unsigned char);
extern signed int v5 (unsigned char, unsigned short, unsigned int);
extern signed int (*v6) (unsigned char, unsigned short, unsigned int);
extern void v7 (void);
extern void (*v8) (void);
unsigned short v9 (signed int);
unsigned short (*v10) (signed int) = v9;
extern unsigned char v11 (signed short, unsigned short, unsigned short, signed int);
extern unsigned char (*v12) (signed short, unsigned short, unsigned short, signed int);
extern unsigned int v13 (signed char, unsigned short, signed short, unsigned int);
extern unsigned int (*v14) (signed char, unsigned short, signed short, unsigned int);
signed short v15 (signed char, unsigned int, signed short);
signed short (*v16) (signed char, unsigned int, signed short) = v15;
extern signed char v17 (unsigned short, signed short);
extern signed char (*v18) (unsigned short, signed short);
extern unsigned char v19 (unsigned short);
extern unsigned char (*v20) (unsigned short);
static signed short v21 (unsigned char, signed char, unsigned int, unsigned short);
static signed short (*v22) (unsigned char, signed char, unsigned int, unsigned short) = v21;
extern void v23 (signed char, unsigned short, signed short);
extern void (*v24) (signed char, unsigned short, signed short);
extern unsigned char v25 (signed int, unsigned int, unsigned short);
extern unsigned char (*v26) (signed int, unsigned int, unsigned short);
void v27 (unsigned char, unsigned short, unsigned int, unsigned int);
void (*v28) (unsigned char, unsigned short, unsigned int, unsigned int) = v27;
extern void v29 (signed int, signed char, unsigned short);
extern void (*v30) (signed int, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v85 = 7U;
signed short v84 = -3;
unsigned char v83 = 6;

void v27 (unsigned char v86, unsigned short v87, unsigned int v88, unsigned int v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 1;
unsigned char v91 = 6;
signed short v90 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v21 (unsigned char v93, signed char v94, unsigned int v95, unsigned short v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = 1;
signed short v98 = -1;
unsigned char v97 = 4;
trace++;
switch (trace)
{
case 1: 
{
signed int v100;
unsigned int v101;
unsigned short v102;
unsigned char v103;
v100 = v99 + -1;
v101 = 2U + 3U;
v102 = v96 + v96;
v103 = v25 (v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 3: 
return 3;
default: abort ();
}
}
}
}

signed short v15 (signed char v104, unsigned int v105, signed short v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = 0;
unsigned char v108 = 3;
signed short v107 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 1;
unsigned char v112 = 1;
signed short v111 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned char v114, signed int v115, signed short v116, unsigned short v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed int v120 = -4;
signed char v119 = -1;
signed int v118 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v121;
signed char v122;
unsigned int v123;
unsigned short v124;
signed short v125;
v121 = v114 + 5;
v122 = v119 - 2;
v123 = 3U - 3U;
v124 = v117 - 2;
v125 = v21 (v121, v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 4: 
return v115;
case 5: 
{
signed short v126;
unsigned char v127;
unsigned int v128;
v126 = 1 - 2;
v127 = v114 + v114;
v128 = v3 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 7: 
return -4;
case 8: 
{
signed char v129;
unsigned short v130;
signed short v131;
unsigned int v132;
unsigned int v133;
v129 = v119 - v119;
v130 = v117 + 7;
v131 = v116 + -4;
v132 = 5U + 1U;
v133 = v13 (v129, v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 10: 
{
signed char v134;
unsigned short v135;
signed short v136;
unsigned int v137;
unsigned int v138;
v134 = v119 - v119;
v135 = v117 - v117;
v136 = 3 - v116;
v137 = 4U - 4U;
v138 = v13 (v134, v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 12: 
return v115;
default: abort ();
}
}
}
}
