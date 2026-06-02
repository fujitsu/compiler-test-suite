#include <stdlib.h>
unsigned char v1 (signed short, unsigned char, signed char);
unsigned char (*v2) (signed short, unsigned char, signed char) = v1;
extern signed short v3 (unsigned int);
extern signed short (*v4) (unsigned int);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern void v7 (unsigned int);
extern void (*v8) (unsigned int);
signed char v9 (unsigned char, unsigned short);
signed char (*v10) (unsigned char, unsigned short) = v9;
void v11 (signed short);
void (*v12) (signed short) = v11;
signed char v13 (signed char, signed int, unsigned int);
signed char (*v14) (signed char, signed int, unsigned int) = v13;
void v15 (signed int);
void (*v16) (signed int) = v15;
signed short v17 (unsigned short, unsigned char);
signed short (*v18) (unsigned short, unsigned char) = v17;
unsigned int v19 (signed char, signed short, signed int, signed int);
unsigned int (*v20) (signed char, signed short, signed int, signed int) = v19;
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
signed short v27 (unsigned char);
signed short (*v28) (unsigned char) = v27;
extern signed int v29 (unsigned char, signed int, signed char);
extern signed int (*v30) (unsigned char, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v108 = 0;
signed char v107 = 1;
signed short v106 = 2;

signed short v27 (unsigned char v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 7U;
signed char v111 = -1;
unsigned int v110 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed char v113, signed short v114, signed int v115, signed int v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed char v119 = 2;
signed char v118 = -3;
unsigned short v117 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned short v120, unsigned char v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 4;
signed char v123 = -4;
unsigned short v122 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed int v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
unsigned char v128 = 4;
signed short v127 = 2;
signed short v126 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed char v129, signed int v130, unsigned int v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = 3;
signed int v133 = -4;
signed short v132 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
unsigned char v138 = 3;
signed short v137 = -2;
signed char v136 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned char v139, unsigned short v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned char v143 = 7;
unsigned int v142 = 1U;
unsigned short v141 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed short v144, unsigned char v145, signed char v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned char v149 = 5;
signed char v148 = -2;
unsigned short v147 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v150;
signed int v151;
v150 = v144 + v144;
v151 = v5 (v150);
history[history_index++] = (int)v151;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
