#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned char v5 (signed int, unsigned int, unsigned int);
extern unsigned char (*v6) (signed int, unsigned int, unsigned int);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed short v9 (void);
extern signed short (*v10) (void);
static unsigned int v11 (signed short, unsigned short, unsigned short, unsigned char);
static unsigned int (*v12) (signed short, unsigned short, unsigned short, unsigned char) = v11;
signed short v13 (unsigned short, signed int, signed char, signed short);
signed short (*v14) (unsigned short, signed int, signed char, signed short) = v13;
extern void v15 (unsigned short, unsigned int, unsigned short);
extern void (*v16) (unsigned short, unsigned int, unsigned short);
void v17 (unsigned int);
void (*v18) (unsigned int) = v17;
static unsigned short v19 (unsigned short);
static unsigned short (*v20) (unsigned short) = v19;
extern unsigned char v21 (signed short, signed int);
extern unsigned char (*v22) (signed short, signed int);
extern unsigned int v23 (unsigned char, signed int, unsigned short, signed int);
extern unsigned int (*v24) (unsigned char, signed int, unsigned short, signed int);
extern signed char v25 (unsigned short, signed char, signed int, signed int);
extern signed char (*v26) (unsigned short, signed char, signed int, signed int);
void v27 (void);
void (*v28) (void) = v27;
extern unsigned char v29 (signed int, unsigned char, signed char);
extern unsigned char (*v30) (signed int, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v111 = 0;
signed short v110 = 2;
unsigned char v109 = 0;

void v27 (void)
{
{
for (;;) {
unsigned char v114 = 2;
signed short v113 = -4;
unsigned int v112 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v19 (unsigned short v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 3;
unsigned short v117 = 5;
signed short v116 = -1;
trace++;
switch (trace)
{
case 7: 
{
signed short v119;
unsigned short v120;
unsigned short v121;
unsigned char v122;
unsigned int v123;
v119 = v116 - 2;
v120 = v117 + v117;
v121 = v117 - v118;
v122 = 1 - 6;
v123 = v11 (v119, v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 9: 
return 2;
default: abort ();
}
}
}
}

void v17 (unsigned int v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 1;
signed short v126 = 2;
signed short v125 = 1;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v128;
unsigned short v129;
v128 = v127 + v127;
v129 = v19 (v128);
history[history_index++] = (int)v129;
}
break;
case 10: 
{
unsigned short v130;
signed char v131;
signed int v132;
signed int v133;
signed char v134;
v130 = 3 + v127;
v131 = -2 + -1;
v132 = -3 + 0;
v133 = 0 - -3;
v134 = v25 (v130, v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed short v13 (unsigned short v135, signed int v136, signed char v137, signed short v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = -3;
signed short v140 = -3;
signed int v139 = 2;
trace++;
switch (trace)
{
case 4: 
return v138;
default: abort ();
}
}
}
}

static unsigned int v11 (signed short v142, unsigned short v143, unsigned short v144, unsigned char v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned short v148 = 2;
signed char v147 = -1;
unsigned char v146 = 0;
trace++;
switch (trace)
{
case 8: 
return 0U;
default: abort ();
}
}
}
}
