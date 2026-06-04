#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed int);
extern unsigned char (*v2) (unsigned int, signed int);
signed short v3 (signed short, unsigned char, unsigned int, signed char);
signed short (*v4) (signed short, unsigned char, unsigned int, signed char) = v3;
extern signed int v5 (unsigned int, unsigned char, signed int, signed char);
extern signed int (*v6) (unsigned int, unsigned char, signed int, signed char);
extern signed char v7 (unsigned short, unsigned char, unsigned int, unsigned char);
extern signed char (*v8) (unsigned short, unsigned char, unsigned int, unsigned char);
unsigned int v9 (signed short, signed char, unsigned int, unsigned int);
unsigned int (*v10) (signed short, signed char, unsigned int, unsigned int) = v9;
extern unsigned char v11 (unsigned int, unsigned char);
extern unsigned char (*v12) (unsigned int, unsigned char);
extern unsigned short v13 (signed char, unsigned char, unsigned short, signed int);
extern unsigned short (*v14) (signed char, unsigned char, unsigned short, signed int);
unsigned char v15 (unsigned short, unsigned short, signed char);
unsigned char (*v16) (unsigned short, unsigned short, signed char) = v15;
extern signed short v17 (unsigned char);
extern signed short (*v18) (unsigned char);
signed int v19 (unsigned char);
signed int (*v20) (unsigned char) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned short v23 (signed short, signed short);
extern unsigned short (*v24) (signed short, signed short);
unsigned char v25 (unsigned char, signed int, signed short, unsigned short);
unsigned char (*v26) (unsigned char, signed int, signed short, unsigned short) = v25;
extern unsigned short v27 (unsigned int, signed short, signed short);
extern unsigned short (*v28) (unsigned int, signed short, signed short);
extern void v29 (signed char, signed char, signed char, unsigned short);
extern void (*v30) (signed char, signed char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v132 = 5;
signed char v131 = 2;
unsigned int v130 = 4U;

unsigned char v25 (unsigned char v133, signed int v134, signed short v135, unsigned short v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = 1;
unsigned char v138 = 5;
signed char v137 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned char v140)
{
history[history_index++] = (int)v140;
{
for (;;) {
unsigned char v143 = 5;
unsigned short v142 = 3;
unsigned char v141 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v144, unsigned short v145, signed char v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed char v149 = -4;
signed int v148 = -1;
unsigned int v147 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed short v150, signed char v151, unsigned int v152, unsigned int v153)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
signed short v156 = 2;
signed short v155 = 1;
signed int v154 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed short v157, unsigned char v158, unsigned int v159, signed char v160)
{
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
history[history_index++] = (int)v160;
{
for (;;) {
unsigned int v163 = 0U;
unsigned short v162 = 2;
signed int v161 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v164;
unsigned char v165;
unsigned char v166;
v164 = 3U + v159;
v165 = v158 - v158;
v166 = v11 (v164, v165);
history[history_index++] = (int)v166;
}
break;
case 15: 
return v157;
default: abort ();
}
}
}
}
