#include <stdlib.h>
signed short v1 (signed short);
signed short (*v2) (signed short) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned char v5 (unsigned short, unsigned char, signed short);
extern unsigned char (*v6) (unsigned short, unsigned char, signed short);
static unsigned int v7 (unsigned char, unsigned short, signed int, unsigned int);
static unsigned int (*v8) (unsigned char, unsigned short, signed int, unsigned int) = v7;
unsigned short v9 (signed char, signed int, unsigned short, signed char);
unsigned short (*v10) (signed char, signed int, unsigned short, signed char) = v9;
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
void v13 (signed short, signed short, signed short, signed char);
void (*v14) (signed short, signed short, signed short, signed char) = v13;
extern void v15 (unsigned int, signed short, signed int, signed char);
extern void (*v16) (unsigned int, signed short, signed int, signed char);
static signed int v19 (unsigned char, unsigned int, signed short, unsigned int);
static signed int (*v20) (unsigned char, unsigned int, signed short, unsigned int) = v19;
extern unsigned char v21 (unsigned short, unsigned char, signed int, signed int);
extern unsigned char (*v22) (unsigned short, unsigned char, signed int, signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern unsigned int v27 (unsigned short, signed int, signed char);
extern unsigned int (*v28) (unsigned short, signed int, signed char);
extern signed int v29 (signed int, unsigned int, unsigned char, unsigned char);
extern signed int (*v30) (signed int, unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v84 = 0;
unsigned short v83 = 6;
unsigned int v82 = 3U;

static signed int v19 (unsigned char v85, unsigned int v86, signed short v87, unsigned int v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = -1;
signed int v90 = 3;
signed short v89 = -1;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v92;
signed short v93;
signed int v94;
signed char v95;
v92 = v86 - 0U;
v93 = v91 - -4;
v94 = v90 - v90;
v95 = -1 - 0;
v15 (v92, v93, v94, v95);
}
break;
case 13: 
return v90;
default: abort ();
}
}
}
}

void v13 (signed short v96, signed short v97, signed short v98, signed char v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed int v102 = -2;
signed char v101 = 1;
signed short v100 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed char v103, signed int v104, unsigned short v105, signed char v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = 0;
unsigned short v108 = 1;
signed short v107 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v7 (unsigned char v110, unsigned short v111, signed int v112, unsigned int v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = 3;
unsigned char v115 = 6;
signed char v114 = 1;
trace++;
switch (trace)
{
case 1: 
return 4U;
default: abort ();
}
}
}
}

signed short v1 (signed short v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 3U;
signed char v119 = -1;
unsigned int v118 = 1U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v121;
unsigned short v122;
signed int v123;
unsigned int v124;
unsigned int v125;
v121 = 1 + 2;
v122 = 4 + 5;
v123 = -2 - 1;
v124 = v120 + 0U;
v125 = v7 (v121, v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 2: 
{
unsigned char v126;
unsigned int v127;
signed short v128;
unsigned int v129;
signed int v130;
v126 = 3 + 7;
v127 = v120 + 4U;
v128 = -1 - 2;
v129 = v118 + 4U;
v130 = v19 (v126, v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}
