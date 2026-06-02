#include <stdlib.h>
unsigned char v1 (unsigned int);
unsigned char (*v2) (unsigned int) = v1;
static signed short v3 (void);
static signed short (*v4) (void) = v3;
extern unsigned char v5 (unsigned short, signed short);
extern unsigned char (*v6) (unsigned short, signed short);
static signed int v7 (signed int, signed int);
static signed int (*v8) (signed int, signed int) = v7;
extern void v9 (void);
extern void (*v10) (void);
void v11 (unsigned char, unsigned int, unsigned char, unsigned char);
void (*v12) (unsigned char, unsigned int, unsigned char, unsigned char) = v11;
extern signed char v13 (signed char, unsigned short, signed int);
extern signed char (*v14) (signed char, unsigned short, signed int);
extern unsigned short v15 (unsigned short, unsigned char);
extern unsigned short (*v16) (unsigned short, unsigned char);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern void v19 (signed char);
extern void (*v20) (signed char);
extern unsigned int v21 (signed int, unsigned short);
extern unsigned int (*v22) (signed int, unsigned short);
extern unsigned int v23 (unsigned short, signed char);
extern unsigned int (*v24) (unsigned short, signed char);
extern signed int v25 (signed char, unsigned int, signed char, signed short);
extern signed int (*v26) (signed char, unsigned int, signed char, signed short);
extern unsigned char v27 (unsigned int, signed char);
extern unsigned char (*v28) (unsigned int, signed char);
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v107 = -4;
unsigned char v106 = 7;
signed int v105 = 1;

void v11 (unsigned char v108, unsigned int v109, unsigned char v110, unsigned char v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = -3;
signed char v113 = 2;
unsigned char v112 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v7 (signed int v115, signed int v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned short v119 = 1;
unsigned int v118 = 6U;
unsigned short v117 = 5;
trace++;
switch (trace)
{
case 3: 
{
v9 ();
}
break;
case 5: 
{
v9 ();
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

static signed short v3 (void)
{
{
for (;;) {
unsigned int v122 = 5U;
signed int v121 = -2;
unsigned short v120 = 0;
trace++;
switch (trace)
{
case 1: 
return -1;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned int v126 = 5U;
unsigned short v125 = 7;
signed char v124 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v127;
v127 = v3 ();
history[history_index++] = (int)v127;
}
break;
case 2: 
{
signed int v128;
signed int v129;
signed int v130;
v128 = 0 + -2;
v129 = 0 - 1;
v130 = v7 (v128, v129);
history[history_index++] = (int)v130;
}
break;
case 14: 
return 3;
default: abort ();
}
}
}
}
