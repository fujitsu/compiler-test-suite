#include <stdlib.h>
extern unsigned int v3 (unsigned char, unsigned int, signed short);
extern unsigned int (*v4) (unsigned char, unsigned int, signed short);
static unsigned char v5 (signed char, unsigned int, unsigned char);
static unsigned char (*v6) (signed char, unsigned int, unsigned char) = v5;
void v7 (signed int, unsigned short);
void (*v8) (signed int, unsigned short) = v7;
extern unsigned int v9 (unsigned int);
extern unsigned int (*v10) (unsigned int);
extern unsigned short v11 (unsigned short, unsigned int, unsigned short);
extern unsigned short (*v12) (unsigned short, unsigned int, unsigned short);
extern signed int v13 (signed int, signed int, signed short, unsigned short);
extern signed int (*v14) (signed int, signed int, signed short, unsigned short);
signed int v15 (unsigned int, unsigned char, signed short, unsigned char);
signed int (*v16) (unsigned int, unsigned char, signed short, unsigned char) = v15;
void v17 (signed short, unsigned int, unsigned int, signed char);
void (*v18) (signed short, unsigned int, unsigned int, signed char) = v17;
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern signed short v21 (signed char, unsigned int, signed int, unsigned char);
extern signed short (*v22) (signed char, unsigned int, signed int, unsigned char);
extern signed int v23 (signed char, signed int, unsigned int);
extern signed int (*v24) (signed char, signed int, unsigned int);
extern void v25 (unsigned short, unsigned char);
extern void (*v26) (unsigned short, unsigned char);
extern signed int v27 (signed short, signed short, unsigned int, signed char);
extern signed int (*v28) (signed short, signed short, unsigned int, signed char);
extern unsigned short v29 (unsigned int, unsigned int, signed char);
extern unsigned short (*v30) (unsigned int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v103 = 7U;
signed int v102 = -3;
signed short v101 = -3;

void v17 (signed short v104, unsigned int v105, unsigned int v106, signed char v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed short v110 = -3;
unsigned int v109 = 3U;
unsigned char v108 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned int v111, unsigned char v112, signed short v113, unsigned char v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = -2;
signed short v116 = 3;
unsigned int v115 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed int v118, unsigned short v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 3U;
signed char v121 = 2;
signed int v120 = -4;
trace++;
switch (trace)
{
case 5: 
{
signed char v123;
unsigned int v124;
signed int v125;
unsigned char v126;
signed short v127;
v123 = -3 + v121;
v124 = v122 - v122;
v125 = v118 - v118;
v126 = 4 - 3;
v127 = v21 (v123, v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 7: 
{
unsigned short v128;
unsigned char v129;
v128 = 7 - v119;
v129 = 4 - 0;
v25 (v128, v129);
}
break;
case 9: 
{
signed char v130;
unsigned int v131;
unsigned char v132;
unsigned char v133;
v130 = v121 - v121;
v131 = 3U + v122;
v132 = 5 - 0;
v133 = v5 (v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

static unsigned char v5 (signed char v134, unsigned int v135, unsigned char v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned short v139 = 2;
unsigned char v138 = 5;
signed char v137 = 2;
trace++;
switch (trace)
{
case 10: 
{
signed short v140;
signed short v141;
unsigned int v142;
signed char v143;
signed int v144;
v140 = 1 + -4;
v141 = -1 + 2;
v142 = 4U + 2U;
v143 = v134 + v134;
v144 = v27 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 12: 
return v138;
default: abort ();
}
}
}
}
