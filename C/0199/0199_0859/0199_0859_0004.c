#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern signed char v3 (unsigned short, unsigned char, unsigned char, unsigned char);
extern signed char (*v4) (unsigned short, unsigned char, unsigned char, unsigned char);
extern signed short v5 (unsigned char, unsigned char);
extern signed short (*v6) (unsigned char, unsigned char);
signed char v7 (unsigned int, unsigned char, unsigned int);
signed char (*v8) (unsigned int, unsigned char, unsigned int) = v7;
extern void v9 (signed int, unsigned short, signed int);
extern void (*v10) (signed int, unsigned short, signed int);
extern unsigned short v11 (unsigned short, signed char, unsigned short);
extern unsigned short (*v12) (unsigned short, signed char, unsigned short);
unsigned short v13 (unsigned short);
unsigned short (*v14) (unsigned short) = v13;
extern void v15 (signed char, signed char);
extern void (*v16) (signed char, signed char);
static signed int v17 (void);
static signed int (*v18) (void) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed char v21 (signed short, signed char, unsigned short, signed int);
extern signed char (*v22) (signed short, signed char, unsigned short, signed int);
extern signed short v23 (unsigned char, unsigned short, unsigned short, signed short);
extern signed short (*v24) (unsigned char, unsigned short, unsigned short, signed short);
extern signed int v25 (unsigned short);
extern signed int (*v26) (unsigned short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v116 = 0;
signed short v115 = -3;
unsigned int v114 = 7U;

static signed int v17 (void)
{
{
for (;;) {
unsigned int v119 = 1U;
signed char v118 = 3;
signed int v117 = 1;
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

unsigned short v13 (unsigned short v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 5;
unsigned char v122 = 3;
unsigned int v121 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned int v124, unsigned char v125, unsigned int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 3;
signed char v128 = -2;
signed int v127 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
signed short v132 = -3;
signed int v131 = 0;
unsigned int v130 = 6U;
trace++;
switch (trace)
{
case 0: 
{
signed int v133;
v133 = v17 ();
history[history_index++] = (int)v133;
}
break;
case 2: 
{
signed char v134;
signed char v135;
v134 = 2 + 2;
v135 = 3 - 0;
v15 (v134, v135);
}
break;
case 8: 
{
signed char v136;
signed char v137;
v136 = -3 + -4;
v137 = -1 + 1;
v15 (v136, v137);
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
