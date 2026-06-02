#include <stdlib.h>
signed char v1 (signed int);
signed char (*v2) (signed int) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned char v5 (unsigned short, unsigned char);
extern unsigned char (*v6) (unsigned short, unsigned char);
extern signed char v7 (signed char, unsigned int, unsigned short, unsigned int);
extern signed char (*v8) (signed char, unsigned int, unsigned short, unsigned int);
extern unsigned short v9 (unsigned char);
extern unsigned short (*v10) (unsigned char);
extern unsigned int v11 (signed int, unsigned short, signed char);
extern unsigned int (*v12) (signed int, unsigned short, signed char);
extern signed short v13 (void);
extern signed short (*v14) (void);
unsigned short v15 (signed short, unsigned char);
unsigned short (*v16) (signed short, unsigned char) = v15;
extern signed short v17 (signed char, signed int, unsigned int, unsigned int);
extern signed short (*v18) (signed char, signed int, unsigned int, unsigned int);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
static unsigned char v23 (signed int, unsigned short);
static unsigned char (*v24) (signed int, unsigned short) = v23;
extern signed short v25 (unsigned char, unsigned short, unsigned char, signed char);
extern signed short (*v26) (unsigned char, unsigned short, unsigned char, signed char);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern void v29 (signed short, signed short, unsigned char, unsigned int);
extern void (*v30) (signed short, signed short, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v111 = 3;
signed short v110 = 2;
unsigned short v109 = 6;

static unsigned char v23 (signed int v112, unsigned short v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 6U;
unsigned short v115 = 4;
signed short v114 = -2;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

unsigned short v15 (signed short v117, unsigned char v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = 1;
unsigned short v120 = 0;
unsigned short v119 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed int v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
unsigned char v125 = 7;
unsigned char v124 = 4;
unsigned short v123 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed int v126;
unsigned short v127;
unsigned char v128;
v126 = v122 - 1;
v127 = v123 + v123;
v128 = v23 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 2: 
{
unsigned short v129;
unsigned char v130;
unsigned char v131;
v129 = v123 - 4;
v130 = v125 + v124;
v131 = v5 (v129, v130);
history[history_index++] = (int)v131;
}
break;
case 16: 
return 3;
default: abort ();
}
}
}
}
