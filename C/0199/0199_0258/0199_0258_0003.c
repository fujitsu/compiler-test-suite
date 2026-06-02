#include <stdlib.h>
void v3 (signed short, signed int, signed short, signed int);
void (*v4) (signed short, signed int, signed short, signed int) = v3;
extern void v5 (signed int, signed int, unsigned short);
extern void (*v6) (signed int, signed int, unsigned short);
extern signed short v7 (unsigned int, unsigned char, unsigned short);
extern signed short (*v8) (unsigned int, unsigned char, unsigned short);
extern unsigned short v9 (unsigned int, signed char);
extern unsigned short (*v10) (unsigned int, signed char);
signed int v13 (unsigned char);
signed int (*v14) (unsigned char) = v13;
extern unsigned char v15 (signed short, unsigned char, unsigned int);
extern unsigned char (*v16) (signed short, unsigned char, unsigned int);
extern signed short v17 (signed int, signed char, unsigned char, signed short);
extern signed short (*v18) (signed int, signed char, unsigned char, signed short);
static unsigned short v19 (unsigned char);
static unsigned short (*v20) (unsigned char) = v19;
unsigned char v21 (signed char);
unsigned char (*v22) (signed char) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned char v27 (unsigned char, unsigned char, signed char);
extern unsigned char (*v28) (unsigned char, unsigned char, signed char);
extern signed int v29 (unsigned char, unsigned int, unsigned int);
extern signed int (*v30) (unsigned char, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v115 = 1;
signed int v114 = -3;
signed char v113 = -3;

unsigned char v21 (signed char v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
unsigned short v119 = 6;
signed short v118 = 2;
signed char v117 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v19 (unsigned char v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = 1;
unsigned char v122 = 7;
unsigned char v121 = 7;
trace++;
switch (trace)
{
case 2: 
return 0;
default: abort ();
}
}
}
}

signed int v13 (unsigned char v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = -1;
unsigned int v126 = 6U;
signed int v125 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed short v128, signed int v129, signed short v130, signed int v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned char v134 = 6;
unsigned int v133 = 1U;
signed int v132 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v135;
unsigned short v136;
v135 = v134 - 6;
v136 = v19 (v135);
history[history_index++] = (int)v136;
}
break;
case 3: 
return;
case 7: 
{
signed short v137;
v137 = v23 ();
history[history_index++] = (int)v137;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
