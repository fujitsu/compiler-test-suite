#include <stdlib.h>
unsigned char v1 (unsigned char, unsigned int);
unsigned char (*v2) (unsigned char, unsigned int) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
static void v5 (signed short, unsigned short);
static void (*v6) (signed short, unsigned short) = v5;
extern unsigned char v7 (unsigned short, unsigned int, signed int);
extern unsigned char (*v8) (unsigned short, unsigned int, signed int);
extern void v9 (signed int, signed char, signed int, unsigned int);
extern void (*v10) (signed int, signed char, signed int, unsigned int);
extern signed int v11 (signed char, unsigned int, unsigned short);
extern signed int (*v12) (signed char, unsigned int, unsigned short);
signed int v13 (unsigned int);
signed int (*v14) (unsigned int) = v13;
signed short v15 (signed short, unsigned int, signed short);
signed short (*v16) (signed short, unsigned int, signed short) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
static unsigned char v19 (unsigned short, unsigned char);
static unsigned char (*v20) (unsigned short, unsigned char) = v19;
extern void v21 (void);
extern void (*v22) (void);
signed short v23 (signed int, signed char, unsigned short, signed int);
signed short (*v24) (signed int, signed char, unsigned short, signed int) = v23;
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
static unsigned char v27 (unsigned char, signed char, unsigned short, signed char);
static unsigned char (*v28) (unsigned char, signed char, unsigned short, signed char) = v27;
extern unsigned int v29 (signed int, unsigned int, signed int);
extern unsigned int (*v30) (signed int, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v84 = -3;
unsigned int v83 = 5U;
unsigned short v82 = 1;

static unsigned char v27 (unsigned char v85, signed char v86, unsigned short v87, signed char v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned int v91 = 5U;
unsigned int v90 = 1U;
unsigned int v89 = 0U;
trace++;
switch (trace)
{
case 1: 
return 6;
default: abort ();
}
}
}
}

unsigned char v25 (void)
{
{
for (;;) {
signed char v94 = -3;
unsigned char v93 = 2;
signed short v92 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed int v95, signed char v96, unsigned short v97, signed int v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned int v101 = 0U;
unsigned short v100 = 2;
signed char v99 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v19 (unsigned short v102, unsigned char v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = 3;
signed int v105 = 3;
unsigned short v104 = 4;
trace++;
switch (trace)
{
case 10: 
{
signed int v107;
unsigned int v108;
signed int v109;
unsigned int v110;
v107 = -3 + v105;
v108 = 3U - 0U;
v109 = -4 + -4;
v110 = v29 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 12: 
return 5;
default: abort ();
}
}
}
}

signed short v15 (signed short v111, unsigned int v112, signed short v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed int v116 = -1;
unsigned short v115 = 4;
unsigned short v114 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned int v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = 0;
unsigned int v119 = 7U;
signed short v118 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v5 (signed short v121, unsigned short v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed short v125 = -2;
unsigned int v124 = 6U;
unsigned char v123 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed char v126;
v126 = v17 ();
history[history_index++] = (int)v126;
}
break;
case 9: 
{
unsigned short v127;
unsigned char v128;
unsigned char v129;
v127 = v122 + v122;
v128 = 5 + 4;
v129 = v19 (v127, v128);
history[history_index++] = (int)v129;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v130, unsigned int v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed int v134 = -1;
signed int v133 = -3;
unsigned int v132 = 2U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v135;
signed char v136;
unsigned short v137;
signed char v138;
unsigned char v139;
v135 = v130 + 6;
v136 = -2 + 1;
v137 = 0 + 4;
v138 = -2 - 1;
v139 = v27 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 2: 
{
signed short v140;
unsigned short v141;
v140 = 0 - -1;
v141 = 3 - 3;
v5 (v140, v141);
}
break;
case 14: 
return 3;
default: abort ();
}
}
}
}
