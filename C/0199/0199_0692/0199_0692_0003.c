#include <stdlib.h>
unsigned short v1 (signed short, unsigned int, unsigned short, unsigned char);
unsigned short (*v2) (signed short, unsigned int, unsigned short, unsigned char) = v1;
signed short v3 (unsigned int, unsigned int, signed short, signed char);
signed short (*v4) (unsigned int, unsigned int, signed short, signed char) = v3;
extern unsigned char v5 (unsigned char, signed int, signed short, signed short);
extern unsigned char (*v6) (unsigned char, signed int, signed short, signed short);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
void v9 (signed char, signed char, signed int);
void (*v10) (signed char, signed char, signed int) = v9;
extern void v11 (signed char, unsigned int, unsigned char);
extern void (*v12) (signed char, unsigned int, unsigned char);
static unsigned int v13 (signed short);
static unsigned int (*v14) (signed short) = v13;
extern signed int v15 (unsigned int, unsigned char, signed short);
extern signed int (*v16) (unsigned int, unsigned char, signed short);
signed char v17 (unsigned short, signed int, signed short, unsigned char);
signed char (*v18) (unsigned short, signed int, signed short, unsigned char) = v17;
extern signed char v19 (unsigned short, signed short);
extern signed char (*v20) (unsigned short, signed short);
unsigned char v21 (unsigned short, unsigned int);
unsigned char (*v22) (unsigned short, unsigned int) = v21;
extern signed char v23 (unsigned char, unsigned int, signed int);
extern signed char (*v24) (unsigned char, unsigned int, signed int);
extern signed char v25 (unsigned int, unsigned char, signed short);
extern signed char (*v26) (unsigned int, unsigned char, signed short);
static signed int v27 (void);
static signed int (*v28) (void) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v88 = -1;
unsigned short v87 = 7;
signed char v86 = 0;

static signed int v27 (void)
{
{
for (;;) {
unsigned short v91 = 4;
unsigned char v90 = 7;
unsigned int v89 = 2U;
trace++;
switch (trace)
{
case 1: 
{
signed short v92;
unsigned int v93;
v92 = 0 - -1;
v93 = v13 (v92);
history[history_index++] = (int)v93;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

unsigned char v21 (unsigned short v94, unsigned int v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed short v98 = 2;
unsigned short v97 = 7;
signed short v96 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned short v99, signed int v100, signed short v101, unsigned char v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 5U;
unsigned short v104 = 1;
signed int v103 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v13 (signed short v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = -1;
signed char v108 = -3;
unsigned char v107 = 0;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v110;
v110 = 1 + 1;
v7 (v110);
}
break;
case 4: 
{
unsigned char v111;
unsigned int v112;
signed int v113;
signed char v114;
v111 = v107 + v107;
v112 = 1U + 1U;
v113 = 2 + -1;
v114 = v23 (v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 6: 
{
unsigned char v115;
unsigned int v116;
signed int v117;
signed char v118;
v115 = 4 + v107;
v116 = 3U + 0U;
v117 = -2 + 2;
v118 = v23 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 8: 
{
unsigned char v119;
unsigned int v120;
signed int v121;
signed char v122;
v119 = v107 + 6;
v120 = 2U - 7U;
v121 = 2 + -4;
v122 = v23 (v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 10: 
{
unsigned char v123;
unsigned int v124;
signed int v125;
signed char v126;
v123 = v107 + 0;
v124 = 5U + 1U;
v125 = -3 - 3;
v126 = v23 (v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 12: 
return 6U;
default: abort ();
}
}
}
}

void v9 (signed char v127, signed char v128, signed int v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed short v132 = -3;
signed char v131 = -4;
signed char v130 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned int v133, unsigned int v134, signed short v135, signed char v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned char v139 = 0;
signed int v138 = 2;
unsigned char v137 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed short v140, unsigned int v141, unsigned short v142, unsigned char v143)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed int v146 = 3;
signed int v145 = -2;
unsigned char v144 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed int v147;
v147 = v27 ();
history[history_index++] = (int)v147;
}
break;
case 14: 
return 5;
default: abort ();
}
}
}
}
