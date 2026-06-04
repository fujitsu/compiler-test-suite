#include <stdlib.h>
signed char v1 (unsigned char);
signed char (*v2) (unsigned char) = v1;
extern unsigned short v3 (signed char, signed char, signed short);
extern unsigned short (*v4) (signed char, signed char, signed short);
extern signed char v5 (signed short, unsigned char);
extern signed char (*v6) (signed short, unsigned char);
signed int v7 (signed int, unsigned int, signed int);
signed int (*v8) (signed int, unsigned int, signed int) = v7;
extern unsigned short v9 (signed short, unsigned short, unsigned short, unsigned int);
extern unsigned short (*v10) (signed short, unsigned short, unsigned short, unsigned int);
extern signed short v11 (signed char, signed short);
extern signed short (*v12) (signed char, signed short);
extern void v13 (void);
extern void (*v14) (void);
signed short v15 (unsigned int, unsigned char);
signed short (*v16) (unsigned int, unsigned char) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern unsigned int v21 (signed char, signed short, signed int, signed int);
extern unsigned int (*v22) (signed char, signed short, signed int, signed int);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
unsigned char v25 (signed char, signed short, signed short);
unsigned char (*v26) (signed char, signed short, signed short) = v25;
extern signed short v27 (unsigned short, signed short, signed short, signed short);
extern signed short (*v28) (unsigned short, signed short, signed short, signed short);
extern signed char v29 (signed int, unsigned int, unsigned char, unsigned int);
extern signed char (*v30) (signed int, unsigned int, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v110 = 2;
unsigned int v109 = 4U;
unsigned short v108 = 0;

unsigned char v25 (signed char v111, signed short v112, signed short v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -1;
unsigned int v115 = 3U;
unsigned short v114 = 3;
trace++;
switch (trace)
{
case 4: 
return 0;
case 6: 
return 5;
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
signed short v119 = -3;
unsigned short v118 = 0;
unsigned short v117 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
signed short v122 = 2;
unsigned int v121 = 7U;
signed char v120 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned int v123, unsigned char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = -3;
unsigned short v126 = 5;
unsigned char v125 = 7;
trace++;
switch (trace)
{
case 8: 
{
signed char v128;
signed short v129;
signed int v130;
signed int v131;
unsigned int v132;
v128 = 2 - 3;
v129 = -2 - 1;
v130 = 1 - -3;
v131 = -2 + v127;
v132 = v21 (v128, v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 10: 
{
signed char v133;
signed short v134;
signed int v135;
signed int v136;
unsigned int v137;
v133 = 3 - 3;
v134 = 3 + 2;
v135 = 0 + 0;
v136 = 2 + v127;
v137 = v21 (v133, v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}

signed int v7 (signed int v138, unsigned int v139, signed int v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed short v143 = -3;
signed short v142 = -1;
unsigned int v141 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned char v144)
{
history[history_index++] = (int)v144;
{
for (;;) {
signed int v147 = -1;
signed int v146 = -1;
unsigned int v145 = 4U;
trace++;
switch (trace)
{
case 0: 
{
signed int v148;
unsigned int v149;
unsigned char v150;
unsigned int v151;
signed char v152;
v148 = v146 + -4;
v149 = v145 + v145;
v150 = 6 - 6;
v151 = 1U - 0U;
v152 = v29 (v148, v149, v150, v151);
history[history_index++] = (int)v152;
}
break;
case 2: 
{
signed char v153;
signed char v154;
signed short v155;
unsigned short v156;
v153 = -4 - 3;
v154 = 3 - -3;
v155 = -3 - 3;
v156 = v3 (v153, v154, v155);
history[history_index++] = (int)v156;
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
