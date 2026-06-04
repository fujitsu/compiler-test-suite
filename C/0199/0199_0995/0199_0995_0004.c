#include <stdlib.h>
void v1 (signed char, signed char, unsigned short, signed short);
void (*v2) (signed char, signed char, unsigned short, signed short) = v1;
static signed int v3 (unsigned short);
static signed int (*v4) (unsigned short) = v3;
extern unsigned int v5 (signed int, signed int, unsigned int, signed short);
extern unsigned int (*v6) (signed int, signed int, unsigned int, signed short);
extern unsigned int v7 (signed int, unsigned int, unsigned char);
extern unsigned int (*v8) (signed int, unsigned int, unsigned char);
extern unsigned short v9 (signed int, signed char, signed int);
extern unsigned short (*v10) (signed int, signed char, signed int);
unsigned short v11 (unsigned char);
unsigned short (*v12) (unsigned char) = v11;
signed short v13 (void);
signed short (*v14) (void) = v13;
extern unsigned char v15 (unsigned short, signed char, signed int);
extern unsigned char (*v16) (unsigned short, signed char, signed int);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (unsigned int, unsigned int, signed int);
extern unsigned int (*v22) (unsigned int, unsigned int, signed int);
signed int v23 (signed char, unsigned int, signed int, signed short);
signed int (*v24) (signed char, unsigned int, signed int, signed short) = v23;
extern unsigned short v25 (unsigned int, unsigned int, unsigned char);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned char);
extern unsigned int v27 (unsigned int, signed int, signed int);
extern unsigned int (*v28) (unsigned int, signed int, signed int);
extern unsigned short v29 (unsigned int, unsigned short, signed char, signed int);
extern unsigned short (*v30) (unsigned int, unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v108 = -1;
signed int v107 = 1;
signed short v106 = 1;

signed int v23 (signed char v109, unsigned int v110, signed int v111, signed short v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 2U;
signed char v114 = -4;
signed int v113 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
signed int v118 = -1;
unsigned int v117 = 3U;
unsigned int v116 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed int v122 = 2;
signed char v121 = 0;
signed char v120 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v3 (unsigned short v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = 3;
unsigned short v125 = 2;
unsigned short v124 = 4;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v127;
unsigned short v128;
signed char v129;
signed int v130;
unsigned short v131;
v127 = 4U - 0U;
v128 = v123 - 6;
v129 = 1 + 2;
v130 = -1 + 3;
v131 = v29 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 3: 
{
unsigned int v132;
unsigned short v133;
signed char v134;
signed int v135;
unsigned short v136;
v132 = 5U + 7U;
v133 = v124 + v125;
v134 = 3 - -3;
v135 = 1 - 0;
v136 = v29 (v132, v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 5: 
{
unsigned int v137;
unsigned short v138;
signed char v139;
signed int v140;
unsigned short v141;
v137 = 4U + 3U;
v138 = v125 - v123;
v139 = -2 + -2;
v140 = -4 - 3;
v141 = v29 (v137, v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 7: 
{
unsigned int v142;
unsigned short v143;
signed char v144;
signed int v145;
unsigned short v146;
v142 = 4U + 7U;
v143 = v125 - v125;
v144 = -2 + -1;
v145 = 1 + -4;
v146 = v29 (v142, v143, v144, v145);
history[history_index++] = (int)v146;
}
break;
case 9: 
{
unsigned int v147;
unsigned short v148;
signed char v149;
signed int v150;
unsigned short v151;
v147 = 7U - 4U;
v148 = 7 - 7;
v149 = -3 + -4;
v150 = 3 + 2;
v151 = v29 (v147, v148, v149, v150);
history[history_index++] = (int)v151;
}
break;
case 11: 
return -1;
default: abort ();
}
}
}
}

void v1 (signed char v152, signed char v153, unsigned short v154, signed short v155)
{
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
{
for (;;) {
signed short v158 = 2;
signed char v157 = -1;
unsigned short v156 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v159;
signed int v160;
v159 = v154 + 5;
v160 = v3 (v159);
history[history_index++] = (int)v160;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
