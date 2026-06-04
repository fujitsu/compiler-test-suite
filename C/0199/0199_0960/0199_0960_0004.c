#include <stdlib.h>
void v1 (signed int, signed char);
void (*v2) (signed int, signed char) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned int v11 (signed short);
extern unsigned int (*v12) (signed short);
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
static signed int v15 (unsigned short, signed int, signed short);
static signed int (*v16) (unsigned short, signed int, signed short) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed int v19 (unsigned int, unsigned int, unsigned int);
extern signed int (*v20) (unsigned int, unsigned int, unsigned int);
extern signed short v21 (signed char, signed char, unsigned int, unsigned int);
extern signed short (*v22) (signed char, signed char, unsigned int, unsigned int);
void v23 (signed short);
void (*v24) (signed short) = v23;
extern unsigned int v25 (signed int, signed char, unsigned short, unsigned short);
extern unsigned int (*v26) (signed int, signed char, unsigned short, unsigned short);
extern signed int v27 (signed short);
extern signed int (*v28) (signed short);
extern signed int v29 (signed int, unsigned char, unsigned short, unsigned int);
extern signed int (*v30) (signed int, unsigned char, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v108 = 2U;
unsigned int v107 = 5U;
unsigned char v106 = 0;

void v23 (signed short v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
signed short v112 = -2;
signed short v111 = -2;
signed int v110 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v15 (unsigned short v113, signed int v114, signed short v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 2U;
unsigned char v117 = 1;
unsigned char v116 = 3;
trace++;
switch (trace)
{
case 4: 
{
signed char v119;
v119 = v17 ();
history[history_index++] = (int)v119;
}
break;
case 14: 
return -2;
default: abort ();
}
}
}
}

void v1 (signed int v120, signed char v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned int v124 = 5U;
signed int v123 = 2;
unsigned int v122 = 4U;
trace++;
switch (trace)
{
case 0: 
{
signed int v125;
unsigned char v126;
unsigned short v127;
unsigned int v128;
signed int v129;
v125 = v123 + v123;
v126 = 6 + 0;
v127 = 2 - 5;
v128 = v124 + v122;
v129 = v29 (v125, v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 2: 
return;
case 3: 
{
unsigned short v130;
signed int v131;
signed short v132;
signed int v133;
v130 = 7 - 7;
v131 = v120 + -4;
v132 = -3 + 0;
v133 = v15 (v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}
