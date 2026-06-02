#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
signed short v5 (signed int, unsigned char);
signed short (*v6) (signed int, unsigned char) = v5;
extern signed char v7 (signed short);
extern signed char (*v8) (signed short);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
static unsigned char v11 (unsigned short);
static unsigned char (*v12) (unsigned short) = v11;
extern void v13 (unsigned short, signed int);
extern void (*v14) (unsigned short, signed int);
extern unsigned short v15 (signed short, signed short, unsigned char);
extern unsigned short (*v16) (signed short, signed short, unsigned char);
extern unsigned short v17 (unsigned int);
extern unsigned short (*v18) (unsigned int);
extern void v19 (unsigned char, signed char);
extern void (*v20) (unsigned char, signed char);
extern signed short v21 (signed int);
extern signed short (*v22) (signed int);
extern void v23 (signed short, signed short, unsigned char);
extern void (*v24) (signed short, signed short, unsigned char);
extern unsigned short v25 (unsigned int, unsigned int, unsigned char, signed short);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned char, signed short);
extern signed char v27 (void);
extern signed char (*v28) (void);
signed short v29 (signed int, signed int, unsigned char);
signed short (*v30) (signed int, signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v112 = 1;
unsigned char v111 = 7;
signed short v110 = 3;

signed short v29 (signed int v113, signed int v114, unsigned char v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = 3;
unsigned short v117 = 7;
unsigned char v116 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v119;
unsigned char v120;
v119 = v117 + v117;
v120 = v11 (v119);
history[history_index++] = (int)v120;
}
break;
case 3: 
{
unsigned short v121;
unsigned char v122;
v121 = 0 - 3;
v122 = v11 (v121);
history[history_index++] = (int)v122;
}
break;
case 13: 
return -1;
default: abort ();
}
}
}
}

static unsigned char v11 (unsigned short v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned int v126 = 1U;
unsigned int v125 = 1U;
unsigned char v124 = 2;
trace++;
switch (trace)
{
case 2: 
return v124;
case 4: 
{
unsigned short v127;
signed int v128;
v127 = 2 + 6;
v128 = 0 + -1;
v13 (v127, v128);
}
break;
case 10: 
{
unsigned short v129;
signed int v130;
v129 = v123 - 1;
v130 = -4 + 1;
v13 (v129, v130);
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
unsigned int v133 = 3U;
unsigned int v132 = 1U;
unsigned short v131 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed int v134, unsigned char v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = -1;
signed char v137 = 2;
unsigned short v136 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
