#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern unsigned int v3 (unsigned int, unsigned short);
extern unsigned int (*v4) (unsigned int, unsigned short);
unsigned short v5 (unsigned short, signed int, signed char, signed short);
unsigned short (*v6) (unsigned short, signed int, signed char, signed short) = v5;
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern void v9 (unsigned int, unsigned int);
extern void (*v10) (unsigned int, unsigned int);
unsigned short v11 (signed short, signed int, unsigned short, unsigned short);
unsigned short (*v12) (signed short, signed int, unsigned short, unsigned short) = v11;
extern signed char v13 (unsigned char, unsigned short, signed int);
extern signed char (*v14) (unsigned char, unsigned short, signed int);
extern unsigned short v15 (unsigned short, signed int);
extern unsigned short (*v16) (unsigned short, signed int);
extern signed int v17 (unsigned int, unsigned int);
extern signed int (*v18) (unsigned int, unsigned int);
unsigned char v19 (signed short);
unsigned char (*v20) (signed short) = v19;
static signed int v21 (void);
static signed int (*v22) (void) = v21;
extern signed int v23 (signed short, unsigned short);
extern signed int (*v24) (signed short, unsigned short);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
void v27 (void);
void (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed short v118 = 1;
signed char v117 = -4;
unsigned short v116 = 7;

void v27 (void)
{
{
for (;;) {
signed char v121 = 1;
unsigned short v120 = 5;
unsigned char v119 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v21 (void)
{
{
for (;;) {
signed short v124 = -2;
unsigned char v123 = 1;
signed short v122 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed short v125;
unsigned short v126;
signed int v127;
v125 = -2 + -4;
v126 = 7 - 0;
v127 = v23 (v125, v126);
history[history_index++] = (int)v127;
}
break;
case 13: 
return -2;
default: abort ();
}
}
}
}

unsigned char v19 (signed short v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
signed short v131 = 0;
unsigned short v130 = 0;
signed char v129 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed short v132, signed int v133, unsigned short v134, unsigned short v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned int v138 = 7U;
signed char v137 = -4;
signed char v136 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned short v139, signed int v140, signed char v141, signed short v142)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned short v145 = 4;
signed int v144 = -4;
unsigned short v143 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
unsigned int v148 = 4U;
unsigned int v147 = 6U;
signed short v146 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed int v149;
v149 = v21 ();
history[history_index++] = (int)v149;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
