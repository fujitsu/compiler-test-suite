#include <stdlib.h>
void v1 (signed int, signed char, signed char, unsigned char);
void (*v2) (signed int, signed char, signed char, unsigned char) = v1;
extern void v3 (signed int, unsigned int, unsigned short);
extern void (*v4) (signed int, unsigned int, unsigned short);
extern unsigned short v5 (signed char, unsigned char);
extern unsigned short (*v6) (signed char, unsigned char);
extern unsigned int v7 (signed short, signed char, unsigned short, signed char);
extern unsigned int (*v8) (signed short, signed char, unsigned short, signed char);
unsigned char v9 (unsigned int, signed int, unsigned short, unsigned int);
unsigned char (*v10) (unsigned int, signed int, unsigned short, unsigned int) = v9;
extern signed int v11 (unsigned short, unsigned short);
extern signed int (*v12) (unsigned short, unsigned short);
unsigned short v13 (signed char, signed short, signed char, unsigned char);
unsigned short (*v14) (signed char, signed short, signed char, unsigned char) = v13;
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern unsigned char v19 (signed int);
extern unsigned char (*v20) (signed int);
extern unsigned char v21 (unsigned short, signed short);
extern unsigned char (*v22) (unsigned short, signed short);
extern signed int v23 (signed int, unsigned char, unsigned char);
extern signed int (*v24) (signed int, unsigned char, unsigned char);
extern signed short v25 (signed short, signed short);
extern signed short (*v26) (signed short, signed short);
unsigned char v27 (unsigned short, signed int, signed char);
unsigned char (*v28) (unsigned short, signed int, signed char) = v27;
unsigned int v29 (signed char, unsigned char);
unsigned int (*v30) (signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v118 = 2;
signed short v117 = 2;
unsigned char v116 = 7;

unsigned int v29 (signed char v119, unsigned char v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 3;
signed short v122 = -1;
signed int v121 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v27 (unsigned short v124, signed int v125, signed char v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 3;
signed short v128 = -1;
signed short v127 = -4;
trace++;
switch (trace)
{
case 2: 
return 3;
case 6: 
return 0;
case 8: 
return v129;
case 10: 
return v129;
default: abort ();
}
}
}
}

unsigned short v13 (signed char v130, signed short v131, signed char v132, unsigned char v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed short v136 = 1;
signed short v135 = -4;
unsigned char v134 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v137, signed int v138, unsigned short v139, unsigned int v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed int v143 = -1;
signed int v142 = -4;
signed int v141 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed int v144, signed char v145, signed char v146, unsigned char v147)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
unsigned int v150 = 5U;
unsigned int v149 = 7U;
unsigned char v148 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed char v151;
unsigned char v152;
v151 = -1 + v145;
v152 = v17 (v151);
history[history_index++] = (int)v152;
}
break;
case 4: 
{
unsigned short v153;
signed short v154;
unsigned char v155;
v153 = 7 - 5;
v154 = 0 - -1;
v155 = v21 (v153, v154);
history[history_index++] = (int)v155;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
