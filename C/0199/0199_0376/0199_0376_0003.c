#include <stdlib.h>
signed int v1 (unsigned int, signed char, unsigned int, signed short);
signed int (*v2) (unsigned int, signed char, unsigned int, signed short) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern signed short v7 (unsigned char, signed char, unsigned short);
extern signed short (*v8) (unsigned char, signed char, unsigned short);
extern unsigned int v9 (signed int, signed short, signed int, signed int);
extern unsigned int (*v10) (signed int, signed short, signed int, signed int);
unsigned short v11 (unsigned short);
unsigned short (*v12) (unsigned short) = v11;
signed int v13 (unsigned short, signed char, signed short, signed int);
signed int (*v14) (unsigned short, signed char, signed short, signed int) = v13;
static signed char v15 (void);
static signed char (*v16) (void) = v15;
extern signed short v17 (unsigned char, signed short);
extern signed short (*v18) (unsigned char, signed short);
extern signed int v19 (unsigned char, signed char, signed short);
extern signed int (*v20) (unsigned char, signed char, signed short);
extern unsigned short v21 (unsigned char, unsigned short);
extern unsigned short (*v22) (unsigned char, unsigned short);
static void v23 (signed int, unsigned int, unsigned char, signed char);
static void (*v24) (signed int, unsigned int, unsigned char, signed char) = v23;
extern unsigned char v25 (unsigned int, signed int, unsigned char, unsigned short);
extern unsigned char (*v26) (unsigned int, signed int, unsigned char, unsigned short);
extern void v27 (unsigned char, signed int, signed short, unsigned int);
extern void (*v28) (unsigned char, signed int, signed short, unsigned int);
extern signed short v29 (unsigned char, signed int, signed int);
extern signed short (*v30) (unsigned char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v98 = 3;
unsigned int v97 = 2U;
unsigned short v96 = 6;

static void v23 (signed int v99, unsigned int v100, unsigned char v101, signed char v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = -2;
unsigned int v104 = 6U;
signed short v103 = 3;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

static signed char v15 (void)
{
{
for (;;) {
signed short v108 = 0;
signed short v107 = -2;
unsigned char v106 = 6;
trace++;
switch (trace)
{
case 3: 
return 1;
case 6: 
return 2;
case 8: 
return -1;
default: abort ();
}
}
}
}

signed int v13 (unsigned short v109, signed char v110, signed short v111, signed int v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 1;
unsigned char v114 = 5;
signed char v113 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned short v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = -3;
unsigned int v118 = 7U;
signed int v117 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned int v120, signed char v121, unsigned int v122, signed short v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 3;
unsigned char v125 = 7;
unsigned int v124 = 4U;
trace++;
switch (trace)
{
case 0: 
{
signed int v127;
unsigned int v128;
unsigned char v129;
signed char v130;
v127 = -2 - 2;
v128 = v122 + v120;
v129 = 2 + 0;
v130 = -4 + 1;
v23 (v127, v128, v129, v130);
}
break;
case 2: 
{
signed char v131;
v131 = v15 ();
history[history_index++] = (int)v131;
}
break;
case 4: 
return 2;
case 5: 
{
signed char v132;
v132 = v15 ();
history[history_index++] = (int)v132;
}
break;
case 7: 
{
signed char v133;
v133 = v15 ();
history[history_index++] = (int)v133;
}
break;
case 9: 
{
signed int v134;
signed short v135;
signed int v136;
signed int v137;
unsigned int v138;
v134 = -3 + -3;
v135 = 2 - 2;
v136 = -2 + -4;
v137 = -4 - 0;
v138 = v9 (v134, v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 13: 
return -1;
default: abort ();
}
}
}
}
