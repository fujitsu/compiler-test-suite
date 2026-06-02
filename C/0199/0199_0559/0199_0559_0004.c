#include <stdlib.h>
extern signed char v1 (unsigned short, signed char, signed char);
extern signed char (*v2) (unsigned short, signed char, signed char);
signed int v3 (signed int, unsigned char, signed short);
signed int (*v4) (signed int, unsigned char, signed short) = v3;
signed char v5 (unsigned char, unsigned int, signed int);
signed char (*v6) (unsigned char, unsigned int, signed int) = v5;
extern unsigned short v7 (unsigned int, signed short);
extern unsigned short (*v8) (unsigned int, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (signed short, unsigned char, unsigned char, unsigned short);
extern unsigned short (*v12) (signed short, unsigned char, unsigned char, unsigned short);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern signed short v15 (unsigned int, unsigned int, signed short);
extern signed short (*v16) (unsigned int, unsigned int, signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
void v19 (unsigned short, unsigned short, signed int);
void (*v20) (unsigned short, unsigned short, signed int) = v19;
extern void v21 (unsigned short, signed char);
extern void (*v22) (unsigned short, signed char);
extern signed short v23 (signed char, signed short, signed char, unsigned short);
extern signed short (*v24) (signed char, signed short, signed char, unsigned short);
unsigned short v25 (unsigned int, signed short, signed char, signed short);
unsigned short (*v26) (unsigned int, signed short, signed char, signed short) = v25;
extern unsigned char v27 (signed char, unsigned short, signed short, unsigned char);
extern unsigned char (*v28) (signed char, unsigned short, signed short, unsigned char);
signed int v29 (unsigned int);
signed int (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v114 = 4U;
unsigned char v113 = 1;
unsigned int v112 = 6U;

signed int v29 (unsigned int v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 6;
signed int v117 = -3;
signed int v116 = 2;
trace++;
switch (trace)
{
case 9: 
return -1;
default: abort ();
}
}
}
}

unsigned short v25 (unsigned int v119, signed short v120, signed char v121, signed short v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed char v125 = -2;
signed short v124 = 2;
signed char v123 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned short v126, unsigned short v127, signed int v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 5;
signed char v130 = 2;
signed char v129 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned char v132, unsigned int v133, signed int v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned char v137 = 7;
signed short v136 = -4;
signed short v135 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v138, unsigned char v139, signed short v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = 2;
signed char v142 = 2;
signed short v141 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v144;
unsigned int v145;
signed short v146;
signed short v147;
v144 = 3U - 4U;
v145 = 2U - 1U;
v146 = -1 + v141;
v147 = v15 (v144, v145, v146);
history[history_index++] = (int)v147;
}
break;
case 3: 
{
unsigned int v148;
unsigned int v149;
signed short v150;
signed short v151;
v148 = 0U - 0U;
v149 = 1U + 7U;
v150 = v140 - v141;
v151 = v15 (v148, v149, v150);
history[history_index++] = (int)v151;
}
break;
case 5: 
{
unsigned int v152;
unsigned int v153;
signed short v154;
signed short v155;
v152 = 3U + 7U;
v153 = 1U - 1U;
v154 = v141 - v140;
v155 = v15 (v152, v153, v154);
history[history_index++] = (int)v155;
}
break;
case 7: 
return v138;
case 11: 
return 1;
default: abort ();
}
}
}
}
