#include <stdlib.h>
extern signed int v1 (signed short, unsigned short, unsigned int);
extern signed int (*v2) (signed short, unsigned short, unsigned int);
signed short v3 (unsigned char);
signed short (*v4) (unsigned char) = v3;
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
static signed char v7 (void);
static signed char (*v8) (void) = v7;
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern signed char v11 (unsigned short, signed short, unsigned short, signed char);
extern signed char (*v12) (unsigned short, signed short, unsigned short, signed char);
extern signed int v13 (unsigned short, unsigned char);
extern signed int (*v14) (unsigned short, unsigned char);
unsigned short v15 (unsigned char);
unsigned short (*v16) (unsigned char) = v15;
extern unsigned char v17 (signed short, unsigned int, signed char, signed int);
extern unsigned char (*v18) (signed short, unsigned int, signed char, signed int);
static signed short v19 (signed char);
static signed short (*v20) (signed char) = v19;
static unsigned char v21 (signed short);
static unsigned char (*v22) (signed short) = v21;
extern unsigned int v23 (unsigned int, unsigned char, signed int, signed int);
extern unsigned int (*v24) (unsigned int, unsigned char, signed int, signed int);
extern signed char v25 (unsigned int, signed int, signed int, unsigned int);
extern signed char (*v26) (unsigned int, signed int, signed int, unsigned int);
extern unsigned int v27 (signed char, unsigned char);
extern unsigned int (*v28) (signed char, unsigned char);
void v29 (unsigned int, unsigned char, signed short, unsigned int);
void (*v30) (unsigned int, unsigned char, signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v100 = 3;
signed char v99 = 3;
signed char v98 = -4;

void v29 (unsigned int v101, unsigned char v102, signed short v103, unsigned int v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = 0;
signed int v106 = 1;
signed char v105 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v21 (signed short v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = 2;
signed char v110 = 1;
signed int v109 = 3;
trace++;
switch (trace)
{
case 7: 
{
signed char v112;
v112 = v7 ();
history[history_index++] = (int)v112;
}
break;
case 9: 
{
signed char v113;
v113 = v7 ();
history[history_index++] = (int)v113;
}
break;
case 11: 
return 5;
case 13: 
return 1;
default: abort ();
}
}
}
}

static signed short v19 (signed char v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 7;
unsigned char v116 = 2;
signed char v115 = -1;
trace++;
switch (trace)
{
case 2: 
return 3;
case 6: 
{
signed short v118;
unsigned char v119;
v118 = -4 + 0;
v119 = v21 (v118);
history[history_index++] = (int)v119;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned char v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed int v123 = -4;
unsigned char v122 = 0;
signed int v121 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed char v124;
signed short v125;
v124 = 1 + -1;
v125 = v19 (v124);
history[history_index++] = (int)v125;
}
break;
case 3: 
return 2;
case 5: 
{
signed char v126;
signed short v127;
v126 = 1 + -4;
v127 = v19 (v126);
history[history_index++] = (int)v127;
}
break;
case 15: 
return 6;
default: abort ();
}
}
}
}

static signed char v7 (void)
{
{
for (;;) {
signed int v130 = 2;
signed char v129 = -4;
signed int v128 = -3;
trace++;
switch (trace)
{
case 8: 
{
signed short v131;
unsigned char v132;
v131 = -1 - 1;
v132 = v21 (v131);
history[history_index++] = (int)v132;
}
break;
case 10: 
return 3;
case 12: 
return 0;
default: abort ();
}
}
}
}

signed short v3 (unsigned char v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = -1;
unsigned char v135 = 0;
signed int v134 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
