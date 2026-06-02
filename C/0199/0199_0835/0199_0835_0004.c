#include <stdlib.h>
unsigned short v1 (unsigned short, unsigned short);
unsigned short (*v2) (unsigned short, unsigned short) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern signed char v5 (signed char, signed short, unsigned int, unsigned int);
extern signed char (*v6) (signed char, signed short, unsigned int, unsigned int);
unsigned short v7 (unsigned int, unsigned short);
unsigned short (*v8) (unsigned int, unsigned short) = v7;
void v9 (void);
void (*v10) (void) = v9;
extern void v11 (signed int, signed short, signed char, unsigned char);
extern void (*v12) (signed int, signed short, signed char, unsigned char);
extern unsigned char v13 (signed char);
extern unsigned char (*v14) (signed char);
static signed short v15 (unsigned int, signed char, unsigned int);
static signed short (*v16) (unsigned int, signed char, unsigned int) = v15;
extern void v17 (signed int, unsigned char);
extern void (*v18) (signed int, unsigned char);
extern signed char v19 (signed char, unsigned int, signed int, unsigned short);
extern signed char (*v20) (signed char, unsigned int, signed int, unsigned short);
extern void v21 (unsigned char, unsigned int, unsigned int, signed short);
extern void (*v22) (unsigned char, unsigned int, unsigned int, signed short);
signed char v23 (void);
signed char (*v24) (void) = v23;
void v25 (unsigned short);
void (*v26) (unsigned short) = v25;
extern unsigned int v27 (signed char, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v28) (signed char, unsigned short, unsigned int, unsigned char);
void v29 (unsigned int, unsigned char, unsigned char);
void (*v30) (unsigned int, unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v103 = 0;
unsigned int v102 = 2U;
unsigned int v101 = 6U;

void v29 (unsigned int v104, unsigned char v105, unsigned char v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = 0;
unsigned int v108 = 4U;
signed int v107 = -4;
trace++;
switch (trace)
{
case 9: 
return;
default: abort ();
}
}
}
}

void v25 (unsigned short v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 5;
unsigned short v112 = 1;
signed int v111 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (void)
{
{
for (;;) {
unsigned int v116 = 2U;
unsigned char v115 = 0;
signed int v114 = -4;
trace++;
switch (trace)
{
case 5: 
return 1;
case 7: 
return -1;
case 11: 
return -2;
default: abort ();
}
}
}
}

static signed short v15 (unsigned int v117, signed char v118, unsigned int v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 5;
unsigned short v121 = 7;
unsigned short v120 = 6;
trace++;
switch (trace)
{
case 1: 
{
signed char v123;
unsigned char v124;
v123 = v118 + v118;
v124 = v13 (v123);
history[history_index++] = (int)v124;
}
break;
case 3: 
{
signed char v125;
unsigned char v126;
v125 = -2 - 2;
v126 = v13 (v125);
history[history_index++] = (int)v126;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
unsigned char v129 = 4;
unsigned char v128 = 0;
signed char v127 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v130, unsigned short v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 4U;
unsigned char v133 = 4;
unsigned short v132 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned short v135, unsigned short v136)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned short v139 = 1;
signed char v138 = 0;
signed char v137 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v140;
signed char v141;
unsigned int v142;
signed short v143;
v140 = 4U - 3U;
v141 = v137 + v137;
v142 = 1U + 2U;
v143 = v15 (v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 14: 
return v139;
default: abort ();
}
}
}
}
