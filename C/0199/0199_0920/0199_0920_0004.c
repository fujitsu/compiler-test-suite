#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned short v3 (signed int, signed char);
extern unsigned short (*v4) (signed int, signed char);
extern void v5 (signed char);
extern void (*v6) (signed char);
extern unsigned short v7 (signed char);
extern unsigned short (*v8) (signed char);
signed int v9 (unsigned char, unsigned char, unsigned int);
signed int (*v10) (unsigned char, unsigned char, unsigned int) = v9;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned int v13 (signed short, signed int, signed int, signed int);
extern unsigned int (*v14) (signed short, signed int, signed int, signed int);
unsigned char v15 (signed int, unsigned char);
unsigned char (*v16) (signed int, unsigned char) = v15;
extern unsigned short v17 (signed short, signed int, signed char);
extern unsigned short (*v18) (signed short, signed int, signed char);
void v19 (void);
void (*v20) (void) = v19;
signed char v21 (unsigned short);
signed char (*v22) (unsigned short) = v21;
signed int v23 (unsigned int, signed char);
signed int (*v24) (unsigned int, signed char) = v23;
extern unsigned short v25 (unsigned int, unsigned int, unsigned int, signed char);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned int, signed char);
extern signed int v27 (signed char, signed int, unsigned short);
extern signed int (*v28) (signed char, signed int, unsigned short);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v114 = -2;
unsigned int v113 = 1U;
unsigned short v112 = 1;

signed int v23 (unsigned int v115, signed char v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed char v119 = 3;
unsigned char v118 = 7;
unsigned short v117 = 1;
trace++;
switch (trace)
{
case 5: 
return -3;
case 9: 
return -1;
case 11: 
return -2;
default: abort ();
}
}
}
}

signed char v21 (unsigned short v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = 1;
signed char v122 = 2;
unsigned char v121 = 3;
trace++;
switch (trace)
{
case 3: 
return 2;
default: abort ();
}
}
}
}

void v19 (void)
{
{
for (;;) {
unsigned char v126 = 0;
signed int v125 = -3;
unsigned short v124 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v127, unsigned char v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 7;
unsigned int v130 = 3U;
signed int v129 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned char v132, unsigned char v133, unsigned int v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = 0;
unsigned int v136 = 2U;
signed int v135 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed short v138;
signed int v139;
signed int v140;
signed int v141;
unsigned int v142;
v138 = -3 - 0;
v139 = 0 - 2;
v140 = v135 - -1;
v141 = v135 - v135;
v142 = v13 (v138, v139, v140, v141);
history[history_index++] = (int)v142;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}
