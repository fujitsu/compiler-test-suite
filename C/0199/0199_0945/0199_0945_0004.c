#include <stdlib.h>
extern unsigned char v1 (signed char, signed int, signed char);
extern unsigned char (*v2) (signed char, signed int, signed char);
unsigned short v7 (signed char, unsigned int, unsigned int, signed short);
unsigned short (*v8) (signed char, unsigned int, unsigned int, signed short) = v7;
unsigned short v9 (unsigned int);
unsigned short (*v10) (unsigned int) = v9;
extern signed char v11 (void);
extern signed char (*v12) (void);
void v13 (unsigned int, unsigned char, signed char);
void (*v14) (unsigned int, unsigned char, signed char) = v13;
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
signed char v17 (unsigned int);
signed char (*v18) (unsigned int) = v17;
extern signed char v19 (signed int, signed short, signed char);
extern signed char (*v20) (signed int, signed short, signed char);
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
signed int v23 (unsigned short, signed short);
signed int (*v24) (unsigned short, signed short) = v23;
unsigned short v25 (unsigned int);
unsigned short (*v26) (unsigned int) = v25;
extern signed char v27 (unsigned char, unsigned char);
extern signed char (*v28) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v109 = 7;
signed char v108 = -1;
unsigned char v107 = 6;

unsigned short v25 (unsigned int v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = 3;
unsigned int v112 = 4U;
unsigned short v111 = 3;
trace++;
switch (trace)
{
case 11: 
return 4;
default: abort ();
}
}
}
}

signed int v23 (unsigned short v114, signed short v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 6;
signed short v117 = -1;
unsigned char v116 = 7;
trace++;
switch (trace)
{
case 7: 
return 0;
default: abort ();
}
}
}
}

signed char v17 (unsigned int v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = -1;
unsigned int v121 = 7U;
signed short v120 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned int v123, unsigned char v124, signed char v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = 1;
signed int v127 = -3;
unsigned short v126 = 4;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v129;
signed int v130;
v129 = v124 + v124;
v130 = v21 (v129);
history[history_index++] = (int)v130;
}
break;
case 4: 
return;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned int v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned short v134 = 1;
signed char v133 = 1;
unsigned char v132 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed char v135, unsigned int v136, unsigned int v137, signed short v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed char v141 = -4;
signed int v140 = 1;
unsigned int v139 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
