#include <stdlib.h>
extern void v1 (signed int, unsigned char, signed short);
extern void (*v2) (signed int, unsigned char, signed short);
extern unsigned int v3 (unsigned short, signed char);
extern unsigned int (*v4) (unsigned short, signed char);
signed int v5 (signed char, signed int);
signed int (*v6) (signed char, signed int) = v5;
void v7 (unsigned int);
void (*v8) (unsigned int) = v7;
signed char v9 (signed char, unsigned int, unsigned char);
signed char (*v10) (signed char, unsigned int, unsigned char) = v9;
unsigned char v11 (signed char, unsigned char);
unsigned char (*v12) (signed char, unsigned char) = v11;
extern signed char v13 (signed char, signed char);
extern signed char (*v14) (signed char, signed char);
unsigned short v17 (unsigned char, signed int, signed int, signed short);
unsigned short (*v18) (unsigned char, signed int, signed int, signed short) = v17;
extern unsigned int v19 (unsigned short, signed int, unsigned char, signed char);
extern unsigned int (*v20) (unsigned short, signed int, unsigned char, signed char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned short v23 (signed short);
extern unsigned short (*v24) (signed short);
extern unsigned int v25 (signed short, unsigned short);
extern unsigned int (*v26) (signed short, unsigned short);
extern signed int v27 (signed short, signed int, signed short, signed char);
extern signed int (*v28) (signed short, signed int, signed short, signed char);
extern unsigned char v29 (unsigned char, unsigned short, unsigned short, signed int);
extern unsigned char (*v30) (unsigned char, unsigned short, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v127 = 6U;
signed int v126 = 1;
signed int v125 = -1;

unsigned short v17 (unsigned char v128, signed int v129, signed int v130, signed short v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = 0;
signed short v133 = 3;
signed short v132 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed char v135, unsigned char v136)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = -3;
unsigned char v138 = 4;
unsigned char v137 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed char v140, unsigned int v141, unsigned char v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed short v145 = -2;
signed short v144 = -4;
signed int v143 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned int v146)
{
history[history_index++] = (int)v146;
{
for (;;) {
unsigned char v149 = 1;
signed short v148 = -3;
signed short v147 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed char v150, signed int v151)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
signed short v154 = -4;
signed char v153 = 0;
unsigned short v152 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
