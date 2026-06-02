#include <stdlib.h>
signed char v1 (signed char, signed char);
signed char (*v2) (signed char, signed char) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
void v5 (signed int, signed short, signed int, unsigned short);
void (*v6) (signed int, signed short, signed int, unsigned short) = v5;
extern unsigned int v7 (unsigned short, signed char, unsigned short, signed int);
extern unsigned int (*v8) (unsigned short, signed char, unsigned short, signed int);
static signed char v9 (signed int, signed char, unsigned int, signed char);
static signed char (*v10) (signed int, signed char, unsigned int, signed char) = v9;
extern unsigned int v11 (signed short, unsigned char, unsigned short, unsigned char);
extern unsigned int (*v12) (signed short, unsigned char, unsigned short, unsigned char);
void v13 (signed int, signed char, signed char);
void (*v14) (signed int, signed char, signed char) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
static unsigned char v19 (signed short, signed int, unsigned short, unsigned int);
static unsigned char (*v20) (signed short, signed int, unsigned short, unsigned int) = v19;
signed int v21 (void);
signed int (*v22) (void) = v21;
signed int v23 (void);
signed int (*v24) (void) = v23;
extern signed short v25 (unsigned short, unsigned char);
extern signed short (*v26) (unsigned short, unsigned char);
extern signed short v27 (void);
extern signed short (*v28) (void);
static unsigned int v29 (signed int, signed short);
static unsigned int (*v30) (signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v90 = 3U;
signed short v89 = 3;
signed int v88 = -4;

static unsigned int v29 (signed int v91, signed short v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned short v95 = 7;
signed short v94 = -2;
unsigned short v93 = 0;
trace++;
switch (trace)
{
case 7: 
return 5U;
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
unsigned char v98 = 0;
unsigned short v97 = 4;
unsigned char v96 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
unsigned int v101 = 1U;
signed char v100 = -3;
unsigned short v99 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v19 (signed short v102, signed int v103, unsigned short v104, unsigned int v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 5;
signed short v107 = -1;
unsigned int v106 = 2U;
trace++;
switch (trace)
{
case 1: 
return v108;
default: abort ();
}
}
}
}

void v13 (signed int v109, signed char v110, signed char v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 3U;
signed short v113 = 1;
unsigned char v112 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v9 (signed int v115, signed char v116, unsigned int v117, signed char v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = 2;
signed char v120 = -3;
signed char v119 = 1;
trace++;
switch (trace)
{
case 6: 
{
signed int v122;
signed short v123;
unsigned int v124;
v122 = v115 - -1;
v123 = -3 - 1;
v124 = v29 (v122, v123);
history[history_index++] = (int)v124;
}
break;
case 8: 
{
unsigned short v125;
unsigned char v126;
signed short v127;
v125 = 7 + 7;
v126 = 6 - 4;
v127 = v25 (v125, v126);
history[history_index++] = (int)v127;
}
break;
case 10: 
{
signed short v128;
unsigned char v129;
unsigned short v130;
unsigned char v131;
unsigned int v132;
v128 = -3 + 1;
v129 = 7 - 2;
v130 = 1 + 6;
v131 = 2 - 3;
v132 = v11 (v128, v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 12: 
return v121;
default: abort ();
}
}
}
}

void v5 (signed int v133, signed short v134, signed int v135, unsigned short v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned int v139 = 4U;
unsigned int v138 = 4U;
signed int v137 = 3;
trace++;
switch (trace)
{
case 5: 
{
signed int v140;
signed char v141;
unsigned int v142;
signed char v143;
signed char v144;
v140 = v135 + v135;
v141 = -1 - -2;
v142 = 0U - v138;
v143 = 0 + 2;
v144 = v9 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

signed char v1 (signed char v145, signed char v146)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned char v149 = 5;
signed short v148 = 3;
signed int v147 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v150;
signed int v151;
unsigned short v152;
unsigned int v153;
unsigned char v154;
v150 = 1 - v148;
v151 = 3 + v147;
v152 = 0 - 6;
v153 = 6U - 5U;
v154 = v19 (v150, v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 2: 
{
unsigned short v155;
signed char v156;
unsigned short v157;
signed int v158;
unsigned int v159;
v155 = 1 - 6;
v156 = v146 - v145;
v157 = 7 + 5;
v158 = -3 + v147;
v159 = v7 (v155, v156, v157, v158);
history[history_index++] = (int)v159;
}
break;
case 16: 
return 3;
default: abort ();
}
}
}
}
