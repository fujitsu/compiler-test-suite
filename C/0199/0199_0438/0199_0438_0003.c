#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
static signed char v3 (signed char, unsigned short, signed short, signed char);
static signed char (*v4) (signed char, unsigned short, signed short, signed char) = v3;
extern unsigned short v5 (signed int, signed short);
extern unsigned short (*v6) (signed int, signed short);
extern unsigned char v7 (unsigned int, unsigned short);
extern unsigned char (*v8) (unsigned int, unsigned short);
extern signed int v9 (unsigned short, signed int, unsigned int);
extern signed int (*v10) (unsigned short, signed int, unsigned int);
extern unsigned short v11 (unsigned int, signed int, unsigned short);
extern unsigned short (*v12) (unsigned int, signed int, unsigned short);
extern void v13 (signed short, signed short, signed char, signed char);
extern void (*v14) (signed short, signed short, signed char, signed char);
unsigned int v15 (unsigned short);
unsigned int (*v16) (unsigned short) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
unsigned short v23 (signed int, unsigned int, signed short);
unsigned short (*v24) (signed int, unsigned int, signed short) = v23;
unsigned char v25 (signed int);
unsigned char (*v26) (signed int) = v25;
extern signed int v27 (signed char, signed short, signed short);
extern signed int (*v28) (signed char, signed short, signed short);
extern unsigned short v29 (unsigned short, signed short, signed short, unsigned int);
extern unsigned short (*v30) (unsigned short, signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v98 = -1;
signed char v97 = -4;
unsigned char v96 = 0;

unsigned char v25 (signed int v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 4;
signed int v101 = -1;
signed char v100 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (signed int v103, unsigned int v104, signed short v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = -1;
signed char v107 = 0;
signed short v106 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
signed int v112 = -3;
unsigned int v111 = 0U;
unsigned short v110 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v3 (signed char v113, unsigned short v114, signed short v115, signed char v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = 2;
signed char v118 = 0;
unsigned int v117 = 2U;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v120;
signed short v121;
signed short v122;
unsigned int v123;
unsigned short v124;
v120 = 1 + v114;
v121 = 0 + 3;
v122 = 0 + v119;
v123 = 7U - 4U;
v124 = v29 (v120, v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 3: 
return v113;
case 11: 
return v118;
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned char v127 = 5;
signed short v126 = 1;
signed char v125 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v128;
unsigned short v129;
signed short v130;
signed char v131;
signed char v132;
v128 = 2 + v125;
v129 = 4 - 1;
v130 = -2 - v126;
v131 = v125 + 2;
v132 = v3 (v128, v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 4: 
{
unsigned short v133;
signed int v134;
unsigned int v135;
signed int v136;
v133 = 1 + 4;
v134 = 1 + -4;
v135 = 7U + 4U;
v136 = v9 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 6: 
{
unsigned short v137;
signed int v138;
unsigned int v139;
signed int v140;
v137 = 3 - 1;
v138 = 1 - 2;
v139 = 3U - 5U;
v140 = v9 (v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 8: 
{
unsigned short v141;
signed int v142;
unsigned int v143;
signed int v144;
v141 = 5 - 5;
v142 = -1 + 0;
v143 = 5U - 3U;
v144 = v9 (v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 10: 
{
signed char v145;
unsigned short v146;
signed short v147;
signed char v148;
signed char v149;
v145 = v125 - -1;
v146 = 2 + 0;
v147 = 1 - v126;
v148 = v125 - v125;
v149 = v3 (v145, v146, v147, v148);
history[history_index++] = (int)v149;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
