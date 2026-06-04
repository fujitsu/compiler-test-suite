#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern unsigned short v5 (signed int, signed short, signed int);
extern unsigned short (*v6) (signed int, signed short, signed int);
static unsigned char v7 (signed char);
static unsigned char (*v8) (signed char) = v7;
extern signed int v9 (unsigned char, unsigned char, signed int, signed short);
extern signed int (*v10) (unsigned char, unsigned char, signed int, signed short);
extern signed int v11 (signed short);
extern signed int (*v12) (signed short);
extern signed char v13 (signed char, unsigned char);
extern signed char (*v14) (signed char, unsigned char);
extern signed short v15 (unsigned short);
extern signed short (*v16) (unsigned short);
void v17 (unsigned char, unsigned short, unsigned short, unsigned short);
void (*v18) (unsigned char, unsigned short, unsigned short, unsigned short) = v17;
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern unsigned char v23 (unsigned short, signed int, signed short, unsigned short);
extern unsigned char (*v24) (unsigned short, signed int, signed short, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (unsigned char, signed short);
extern signed char (*v30) (unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v105 = 6;
signed short v104 = 1;
unsigned short v103 = 2;

unsigned short v19 (void)
{
{
for (;;) {
unsigned short v108 = 4;
signed char v107 = 3;
signed char v106 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned char v109, unsigned short v110, unsigned short v111, unsigned short v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned short v115 = 7;
signed int v114 = -4;
unsigned char v113 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v7 (signed char v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
unsigned short v119 = 4;
unsigned char v118 = 5;
signed short v117 = -3;
trace++;
switch (trace)
{
case 11: 
return 5;
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
signed int v122 = -4;
unsigned short v121 = 4;
unsigned short v120 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed short v123;
v123 = v27 ();
history[history_index++] = (int)v123;
}
break;
case 2: 
{
signed int v124;
signed short v125;
signed int v126;
unsigned short v127;
v124 = 2 - 3;
v125 = 0 - -3;
v126 = -2 + v122;
v127 = v5 (v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 6: 
{
unsigned short v128;
signed int v129;
signed short v130;
unsigned short v131;
unsigned char v132;
v128 = v121 - v120;
v129 = -3 - v122;
v130 = 2 + -3;
v131 = 3 - 4;
v132 = v23 (v128, v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 8: 
{
signed short v133;
signed int v134;
v133 = 2 + -2;
v134 = v11 (v133);
history[history_index++] = (int)v134;
}
break;
case 10: 
{
signed char v135;
unsigned char v136;
v135 = -4 + 3;
v136 = v7 (v135);
history[history_index++] = (int)v136;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
