#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
extern unsigned char v3 (unsigned char, unsigned short, unsigned char, unsigned int);
extern unsigned char (*v4) (unsigned char, unsigned short, unsigned char, unsigned int);
unsigned short v5 (signed int, unsigned char, unsigned char, signed int);
unsigned short (*v6) (signed int, unsigned char, unsigned char, signed int) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
void v9 (unsigned short, unsigned char);
void (*v10) (unsigned short, unsigned char) = v9;
extern signed int v13 (signed short, signed int);
extern signed int (*v14) (signed short, signed int);
extern signed short v15 (unsigned char, signed short, unsigned int, unsigned short);
extern signed short (*v16) (unsigned char, signed short, unsigned int, unsigned short);
static unsigned char v17 (signed char, signed int, signed int, unsigned int);
static unsigned char (*v18) (signed char, signed int, signed int, unsigned int) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (signed char, signed char, unsigned char, unsigned int);
extern signed int (*v22) (signed char, signed char, unsigned char, unsigned int);
signed int v23 (void);
signed int (*v24) (void) = v23;
static signed short v25 (signed char);
static signed short (*v26) (signed char) = v25;
extern signed char v27 (signed int, signed short, unsigned char, signed int);
extern signed char (*v28) (signed int, signed short, unsigned char, signed int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v113 = 5;
signed char v112 = 3;
unsigned int v111 = 1U;

static signed short v25 (signed char v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
unsigned int v117 = 1U;
signed int v116 = -3;
unsigned short v115 = 4;
trace++;
switch (trace)
{
case 10: 
{
v29 ();
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
unsigned int v120 = 2U;
signed char v119 = 1;
unsigned short v118 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v17 (signed char v121, signed int v122, signed int v123, unsigned int v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 6;
unsigned int v126 = 2U;
signed int v125 = 0;
trace++;
switch (trace)
{
case 9: 
{
signed char v128;
signed short v129;
v128 = v121 - v121;
v129 = v25 (v128);
history[history_index++] = (int)v129;
}
break;
case 13: 
return v127;
default: abort ();
}
}
}
}

void v9 (unsigned short v130, unsigned char v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = 2;
unsigned short v133 = 0;
unsigned char v132 = 2;
trace++;
switch (trace)
{
case 6: 
return;
case 8: 
{
signed char v135;
signed int v136;
signed int v137;
unsigned int v138;
unsigned char v139;
v135 = -2 - v134;
v136 = -1 - -2;
v137 = -2 + 0;
v138 = 6U - 7U;
v139 = v17 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

unsigned short v5 (signed int v140, unsigned char v141, unsigned char v142, signed int v143)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed short v146 = -2;
signed char v145 = -3;
signed int v144 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
