#include <stdlib.h>
unsigned int v1 (unsigned int, signed char, unsigned char, unsigned char);
unsigned int (*v2) (unsigned int, signed char, unsigned char, unsigned char) = v1;
extern signed short v3 (unsigned int, unsigned int, unsigned char);
extern signed short (*v4) (unsigned int, unsigned int, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed int v9 (signed short, unsigned short, signed int);
extern signed int (*v10) (signed short, unsigned short, signed int);
extern void v11 (unsigned int, signed char, signed char, signed int);
extern void (*v12) (unsigned int, signed char, signed char, signed int);
extern signed short v13 (unsigned short, signed int, unsigned char, signed int);
extern signed short (*v14) (unsigned short, signed int, unsigned char, signed int);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned int v17 (signed char, signed char, unsigned short, signed int);
extern unsigned int (*v18) (signed char, signed char, unsigned short, signed int);
void v19 (signed int, unsigned char, unsigned int);
void (*v20) (signed int, unsigned char, unsigned int) = v19;
signed short v21 (unsigned char);
signed short (*v22) (unsigned char) = v21;
unsigned char v23 (unsigned int, signed short, signed char);
unsigned char (*v24) (unsigned int, signed short, signed char) = v23;
unsigned char v25 (unsigned char, unsigned short, signed short, unsigned short);
unsigned char (*v26) (unsigned char, unsigned short, signed short, unsigned short) = v25;
signed int v27 (unsigned int, unsigned short, unsigned int, unsigned char);
signed int (*v28) (unsigned int, unsigned short, unsigned int, unsigned char) = v27;
extern signed char v29 (signed short);
extern signed char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v118 = 2;
signed char v117 = -2;
unsigned int v116 = 4U;

signed int v27 (unsigned int v119, unsigned short v120, unsigned int v121, unsigned char v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned int v125 = 3U;
unsigned short v124 = 5;
unsigned int v123 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (unsigned char v126, unsigned short v127, signed short v128, unsigned short v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed short v132 = 0;
unsigned char v131 = 5;
unsigned short v130 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned int v133, signed short v134, signed char v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = -1;
unsigned int v137 = 2U;
signed short v136 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (unsigned char v139)
{
history[history_index++] = (int)v139;
{
for (;;) {
signed short v142 = -4;
unsigned int v141 = 6U;
signed short v140 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed int v143, unsigned char v144, unsigned int v145)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned short v148 = 3;
signed char v147 = 3;
unsigned char v146 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned int v149, signed char v150, unsigned char v151, unsigned char v152)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
signed short v155 = -2;
signed char v154 = -4;
unsigned int v153 = 3U;
trace++;
switch (trace)
{
case 0: 
{
signed short v156;
signed char v157;
v156 = v155 - 3;
v157 = v29 (v156);
history[history_index++] = (int)v157;
}
break;
case 22: 
return 1U;
default: abort ();
}
}
}
}
