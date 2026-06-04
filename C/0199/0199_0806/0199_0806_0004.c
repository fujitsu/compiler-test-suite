#include <stdlib.h>
unsigned char v1 (signed int, unsigned char, signed short);
unsigned char (*v2) (signed int, unsigned char, signed short) = v1;
extern unsigned short v3 (unsigned int, signed char);
extern unsigned short (*v4) (unsigned int, signed char);
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
unsigned short v11 (unsigned int);
unsigned short (*v12) (unsigned int) = v11;
static signed char v13 (signed int, unsigned int, unsigned int, unsigned short);
static signed char (*v14) (signed int, unsigned int, unsigned int, unsigned short) = v13;
extern unsigned int v15 (signed char, signed short);
extern unsigned int (*v16) (signed char, signed short);
extern unsigned char v17 (unsigned char, signed short, signed short, signed char);
extern unsigned char (*v18) (unsigned char, signed short, signed short, signed char);
extern unsigned short v19 (signed char, signed int, unsigned short);
extern unsigned short (*v20) (signed char, signed int, unsigned short);
signed short v21 (unsigned int);
signed short (*v22) (unsigned int) = v21;
extern signed char v23 (signed char, unsigned int, unsigned short);
extern signed char (*v24) (signed char, unsigned int, unsigned short);
extern signed char v25 (signed int, signed char);
extern signed char (*v26) (signed int, signed char);
extern void v27 (signed int);
extern void (*v28) (signed int);
extern void v29 (unsigned char, unsigned int, signed int, signed char);
extern void (*v30) (unsigned char, unsigned int, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v108 = 1;
signed int v107 = -3;
unsigned char v106 = 6;

signed short v21 (unsigned int v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 4U;
signed short v111 = -3;
unsigned int v110 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v13 (signed int v113, unsigned int v114, unsigned int v115, unsigned short v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned short v119 = 3;
unsigned short v118 = 6;
unsigned char v117 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v120;
unsigned int v121;
signed int v122;
signed char v123;
v120 = 3 + 4;
v121 = v114 - 1U;
v122 = v113 - -3;
v123 = 0 - 0;
v29 (v120, v121, v122, v123);
}
break;
case 3: 
{
unsigned char v124;
signed short v125;
signed short v126;
signed char v127;
unsigned char v128;
v124 = 6 - 0;
v125 = 0 + 1;
v126 = 1 + 1;
v127 = -1 + 2;
v128 = v17 (v124, v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 5: 
{
unsigned char v129;
unsigned int v130;
signed int v131;
signed char v132;
v129 = v117 - v117;
v130 = v114 + v115;
v131 = v113 + v113;
v132 = 3 - -1;
v29 (v129, v130, v131, v132);
}
break;
case 7: 
{
unsigned char v133;
unsigned int v134;
signed int v135;
signed char v136;
v133 = 5 + 3;
v134 = v115 - v115;
v135 = 0 - v113;
v136 = -3 - -2;
v29 (v133, v134, v135, v136);
}
break;
case 9: 
{
unsigned char v137;
unsigned int v138;
signed int v139;
signed char v140;
v137 = 1 + 0;
v138 = 1U - 1U;
v139 = 0 - -2;
v140 = -1 + 2;
v29 (v137, v138, v139, v140);
}
break;
case 11: 
return -3;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v141)
{
history[history_index++] = (int)v141;
{
for (;;) {
signed char v144 = 2;
unsigned short v143 = 0;
unsigned short v142 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed int v145, unsigned char v146, signed short v147)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed char v150 = -3;
unsigned char v149 = 0;
signed short v148 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed int v151;
unsigned int v152;
unsigned int v153;
unsigned short v154;
signed char v155;
v151 = -1 - 0;
v152 = 3U - 1U;
v153 = 7U + 0U;
v154 = 3 - 4;
v155 = v13 (v151, v152, v153, v154);
history[history_index++] = (int)v155;
}
break;
case 12: 
return v149;
default: abort ();
}
}
}
}
