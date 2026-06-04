#include <stdlib.h>
extern signed int v1 (signed char);
extern signed int (*v2) (signed char);
unsigned short v3 (signed char, unsigned char);
unsigned short (*v4) (signed char, unsigned char) = v3;
extern unsigned char v5 (unsigned char, unsigned char, unsigned short);
extern unsigned char (*v6) (unsigned char, unsigned char, unsigned short);
extern unsigned short v7 (unsigned short, signed int, unsigned short);
extern unsigned short (*v8) (unsigned short, signed int, unsigned short);
extern unsigned char v9 (unsigned char, unsigned short, signed int);
extern unsigned char (*v10) (unsigned char, unsigned short, signed int);
extern unsigned short v11 (unsigned int);
extern unsigned short (*v12) (unsigned int);
signed short v13 (unsigned short, unsigned char, unsigned short);
signed short (*v14) (unsigned short, unsigned char, unsigned short) = v13;
extern unsigned short v15 (unsigned char, unsigned char);
extern unsigned short (*v16) (unsigned char, unsigned char);
extern unsigned char v17 (signed short, unsigned char, signed char, signed int);
extern unsigned char (*v18) (signed short, unsigned char, signed char, signed int);
void v19 (void);
void (*v20) (void) = v19;
extern signed int v21 (unsigned char, unsigned short, signed char, unsigned int);
extern signed int (*v22) (unsigned char, unsigned short, signed char, unsigned int);
extern void v23 (unsigned short, unsigned char, signed char, unsigned int);
extern void (*v24) (unsigned short, unsigned char, signed char, unsigned int);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern signed short v27 (unsigned int, unsigned short, signed int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned short, signed int, unsigned short);
unsigned short v29 (signed char, signed int, signed int);
unsigned short (*v30) (signed char, signed int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v126 = -3;
unsigned short v125 = 3;
unsigned char v124 = 0;

unsigned short v29 (signed char v127, signed int v128, signed int v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed short v132 = -3;
signed int v131 = 3;
signed int v130 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (void)
{
{
for (;;) {
signed short v135 = -4;
unsigned short v134 = 7;
unsigned short v133 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (void)
{
{
for (;;) {
unsigned char v138 = 4;
signed char v137 = 0;
unsigned char v136 = 5;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v139;
signed int v140;
unsigned short v141;
unsigned short v142;
v139 = 6 + 7;
v140 = -3 - 2;
v141 = 2 - 6;
v142 = v7 (v139, v140, v141);
history[history_index++] = (int)v142;
}
break;
case 8: 
return;
default: abort ();
}
}
}
}

signed short v13 (unsigned short v143, unsigned char v144, unsigned short v145)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned short v148 = 7;
unsigned int v147 = 0U;
signed int v146 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed char v149, unsigned char v150)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
signed int v153 = -2;
signed int v152 = 2;
unsigned short v151 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
