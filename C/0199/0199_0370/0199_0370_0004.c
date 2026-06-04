#include <stdlib.h>
signed char v1 (signed int, unsigned int, signed char);
signed char (*v2) (signed int, unsigned int, signed char) = v1;
void v3 (signed char, signed short, unsigned int, unsigned short);
void (*v4) (signed char, signed short, unsigned int, unsigned short) = v3;
extern signed short v5 (signed char, signed char, unsigned int, signed int);
extern signed short (*v6) (signed char, signed char, unsigned int, signed int);
signed short v7 (signed char, signed char, signed int, signed int);
signed short (*v8) (signed char, signed char, signed int, signed int) = v7;
extern signed char v9 (unsigned short, signed short, unsigned int, unsigned int);
extern signed char (*v10) (unsigned short, signed short, unsigned int, unsigned int);
void v13 (signed int, signed int, signed short);
void (*v14) (signed int, signed int, signed short) = v13;
extern unsigned int v15 (unsigned int, unsigned int, unsigned char, unsigned int);
extern unsigned int (*v16) (unsigned int, unsigned int, unsigned char, unsigned int);
extern unsigned int v17 (unsigned char, unsigned int);
extern unsigned int (*v18) (unsigned char, unsigned int);
extern signed char v19 (signed char, unsigned int, signed char, signed char);
extern signed char (*v20) (signed char, unsigned int, signed char, signed char);
void v21 (unsigned short, signed short, signed short);
void (*v22) (unsigned short, signed short, signed short) = v21;
signed short v23 (unsigned char, signed char, signed char);
signed short (*v24) (unsigned char, signed char, signed char) = v23;
extern signed short v25 (unsigned int, unsigned short);
extern signed short (*v26) (unsigned int, unsigned short);
extern signed char v27 (signed char, unsigned short, signed int);
extern signed char (*v28) (signed char, unsigned short, signed int);
extern signed short v29 (signed short, unsigned short, unsigned char);
extern signed short (*v30) (signed short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v123 = 1U;
signed short v122 = 2;
signed short v121 = 1;

signed short v23 (unsigned char v124, signed char v125, signed char v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = 1;
signed char v128 = -4;
signed short v127 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (unsigned short v130, signed short v131, signed short v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = 2;
unsigned short v134 = 5;
signed char v133 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed int v136, signed int v137, signed short v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = 0;
signed short v140 = 1;
unsigned int v139 = 5U;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

signed short v7 (signed char v142, signed char v143, signed int v144, signed int v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed short v148 = -3;
signed int v147 = -4;
unsigned char v146 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed char v149, signed short v150, unsigned int v151, unsigned short v152)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
signed char v155 = -2;
unsigned short v154 = 5;
unsigned int v153 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed int v156, unsigned int v157, signed char v158)
{
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
{
for (;;) {
unsigned int v161 = 3U;
signed short v160 = 1;
unsigned int v159 = 6U;
trace++;
switch (trace)
{
case 0: 
{
signed char v162;
signed char v163;
unsigned int v164;
signed int v165;
signed short v166;
v162 = v158 - v158;
v163 = v158 - -4;
v164 = 7U + v161;
v165 = v156 + v156;
v166 = v5 (v162, v163, v164, v165);
history[history_index++] = (int)v166;
}
break;
case 14: 
return v158;
default: abort ();
}
}
}
}
