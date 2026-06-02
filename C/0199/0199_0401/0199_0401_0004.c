#include <stdlib.h>
unsigned short v1 (signed short);
unsigned short (*v2) (signed short) = v1;
extern unsigned int v3 (signed int, signed int, unsigned char, signed char);
extern unsigned int (*v4) (signed int, signed int, unsigned char, signed char);
static void v5 (void);
static void (*v6) (void) = v5;
extern signed char v7 (unsigned int, signed short, unsigned char, signed int);
extern signed char (*v8) (unsigned int, signed short, unsigned char, signed int);
extern unsigned short v9 (signed short, signed short);
extern unsigned short (*v10) (signed short, signed short);
extern signed short v11 (unsigned int, signed int);
extern signed short (*v12) (unsigned int, signed int);
static unsigned char v13 (unsigned short, signed short, unsigned short);
static unsigned char (*v14) (unsigned short, signed short, unsigned short) = v13;
extern unsigned short v15 (signed short, unsigned char);
extern unsigned short (*v16) (signed short, unsigned char);
extern signed short v17 (signed char, signed int, signed char, unsigned int);
extern signed short (*v18) (signed char, signed int, signed char, unsigned int);
signed int v19 (signed char);
signed int (*v20) (signed char) = v19;
extern unsigned short v21 (unsigned char, unsigned int, signed short, unsigned char);
extern unsigned short (*v22) (unsigned char, unsigned int, signed short, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
void v25 (unsigned short);
void (*v26) (unsigned short) = v25;
signed short v27 (signed int, signed short);
signed short (*v28) (signed int, signed short) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v98 = 4;
signed int v97 = -3;
signed char v96 = -3;

signed short v27 (signed int v99, signed short v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 7;
unsigned char v102 = 0;
unsigned short v101 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (unsigned short v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
unsigned char v107 = 5;
signed short v106 = -4;
unsigned short v105 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed char v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = -4;
unsigned char v110 = 2;
signed short v109 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v13 (unsigned short v112, signed short v113, unsigned short v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 0;
signed char v116 = 3;
signed int v115 = -1;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v118;
v118 = v23 ();
history[history_index++] = (int)v118;
}
break;
case 6: 
{
v5 ();
}
break;
case 12: 
return v117;
default: abort ();
}
}
}
}

static void v5 (void)
{
{
for (;;) {
unsigned char v121 = 6;
signed int v120 = -1;
unsigned int v119 = 2U;
trace++;
switch (trace)
{
case 1: 
{
signed int v122;
v122 = v29 ();
history[history_index++] = (int)v122;
}
break;
case 3: 
{
unsigned short v123;
signed short v124;
unsigned short v125;
unsigned char v126;
v123 = 1 + 7;
v124 = 1 - 1;
v125 = 5 + 3;
v126 = v13 (v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 7: 
{
signed short v127;
unsigned char v128;
unsigned short v129;
v127 = -4 + -3;
v128 = 5 + v121;
v129 = v15 (v127, v128);
history[history_index++] = (int)v129;
}
break;
case 9: 
{
signed int v130;
v130 = v29 ();
history[history_index++] = (int)v130;
}
break;
case 11: 
return;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned short v1 (signed short v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = 1;
unsigned char v133 = 4;
unsigned short v132 = 6;
trace++;
switch (trace)
{
case 0: 
{
v5 ();
}
break;
case 14: 
return v132;
default: abort ();
}
}
}
}
