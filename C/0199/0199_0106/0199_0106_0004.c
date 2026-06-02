#include <stdlib.h>
extern signed int v1 (unsigned short, signed char);
extern signed int (*v2) (unsigned short, signed char);
void v3 (unsigned short, signed int);
void (*v4) (unsigned short, signed int) = v3;
signed int v5 (unsigned short, signed short, unsigned char, signed short);
signed int (*v6) (unsigned short, signed short, unsigned char, signed short) = v5;
signed short v7 (unsigned char, unsigned char);
signed short (*v8) (unsigned char, unsigned char) = v7;
void v9 (unsigned char, unsigned int, unsigned short, unsigned char);
void (*v10) (unsigned char, unsigned int, unsigned short, unsigned char) = v9;
extern void v11 (signed short, unsigned int);
extern void (*v12) (signed short, unsigned int);
extern signed int v13 (void);
extern signed int (*v14) (void);
static signed short v15 (signed short, unsigned int, signed int);
static signed short (*v16) (signed short, unsigned int, signed int) = v15;
extern void v17 (unsigned short, unsigned short, signed short);
extern void (*v18) (unsigned short, unsigned short, signed short);
extern signed int v19 (signed char, signed int, unsigned char);
extern signed int (*v20) (signed char, signed int, unsigned char);
extern unsigned char v21 (unsigned short, unsigned short, unsigned int, signed char);
extern unsigned char (*v22) (unsigned short, unsigned short, unsigned int, signed char);
extern signed char v23 (unsigned int);
extern signed char (*v24) (unsigned int);
extern signed char v25 (signed char, unsigned int, signed short, signed char);
extern signed char (*v26) (signed char, unsigned int, signed short, signed char);
extern unsigned int v27 (signed int, signed char, unsigned char);
extern unsigned int (*v28) (signed int, signed char, unsigned char);
extern unsigned char v29 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v30) (unsigned short, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v120 = 4;
signed int v119 = -4;
signed int v118 = 2;

static signed short v15 (signed short v121, unsigned int v122, signed int v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed char v126 = -3;
unsigned char v125 = 4;
signed int v124 = 0;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v127;
unsigned short v128;
unsigned int v129;
signed char v130;
unsigned char v131;
v127 = 2 - 2;
v128 = 7 + 2;
v129 = v122 + v122;
v130 = v126 - 0;
v131 = v21 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 12: 
return v121;
default: abort ();
}
}
}
}

void v9 (unsigned char v132, unsigned int v133, unsigned short v134, unsigned char v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned char v138 = 2;
signed int v137 = 2;
unsigned short v136 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned char v139, unsigned char v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed int v143 = 1;
signed int v142 = 3;
unsigned short v141 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned short v144, signed short v145, unsigned char v146, signed short v147)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
unsigned char v150 = 4;
signed short v149 = 1;
signed int v148 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned short v151, signed int v152)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
signed short v155 = 0;
signed char v154 = -4;
unsigned char v153 = 5;
trace++;
switch (trace)
{
case 7: 
{
signed char v156;
signed int v157;
unsigned char v158;
signed int v159;
v156 = v154 + v154;
v157 = v152 + -1;
v158 = v153 - v153;
v159 = v19 (v156, v157, v158);
history[history_index++] = (int)v159;
}
break;
case 9: 
{
signed short v160;
unsigned int v161;
signed int v162;
signed short v163;
v160 = v155 - v155;
v161 = 1U + 7U;
v162 = v152 + v152;
v163 = v15 (v160, v161, v162);
history[history_index++] = (int)v163;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
