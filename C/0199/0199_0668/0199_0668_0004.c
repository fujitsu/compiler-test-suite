#include <stdlib.h>
unsigned short v1 (signed int);
unsigned short (*v2) (signed int) = v1;
extern unsigned int v3 (signed char);
extern unsigned int (*v4) (signed char);
extern unsigned char v5 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v6) (unsigned char, unsigned short, unsigned short);
extern signed short v7 (unsigned int, unsigned char, signed short, signed char);
extern signed short (*v8) (unsigned int, unsigned char, signed short, signed char);
signed int v9 (signed char, signed char, signed char);
signed int (*v10) (signed char, signed char, signed char) = v9;
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed char v13 (signed char, signed short);
extern signed char (*v14) (signed char, signed short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed char v17 (unsigned short, signed int, signed int, unsigned short);
extern signed char (*v18) (unsigned short, signed int, signed int, unsigned short);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
static signed int v23 (unsigned short);
static signed int (*v24) (unsigned short) = v23;
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned short v29 (signed int, unsigned short, signed char, signed char);
extern unsigned short (*v30) (signed int, unsigned short, signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v107 = -3;
unsigned short v106 = 1;
signed int v105 = -2;

static signed int v23 (unsigned short v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = -1;
unsigned short v110 = 1;
unsigned short v109 = 7;
trace++;
switch (trace)
{
case 1: 
return -3;
default: abort ();
}
}
}
}

signed int v9 (signed char v112, signed char v113, signed char v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned int v117 = 4U;
unsigned short v116 = 0;
signed int v115 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed int v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = -4;
signed short v120 = -1;
signed char v119 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v122;
signed int v123;
v122 = 0 + 6;
v123 = v23 (v122);
history[history_index++] = (int)v123;
}
break;
case 2: 
{
signed char v124;
signed short v125;
signed char v126;
v124 = v119 - v119;
v125 = v120 + v120;
v126 = v13 (v124, v125);
history[history_index++] = (int)v126;
}
break;
case 4: 
{
signed char v127;
signed short v128;
signed char v129;
v127 = 1 + -4;
v128 = v120 - v121;
v129 = v13 (v127, v128);
history[history_index++] = (int)v129;
}
break;
case 6: 
{
unsigned char v130;
v130 = 1 + 6;
v11 (v130);
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
