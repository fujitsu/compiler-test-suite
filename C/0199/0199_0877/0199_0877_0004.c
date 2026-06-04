#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed char, signed short, unsigned short);
extern unsigned int (*v2) (unsigned short, signed char, signed short, unsigned short);
extern void v3 (signed int);
extern void (*v4) (signed int);
signed short v5 (unsigned char, unsigned char, unsigned int);
signed short (*v6) (unsigned char, unsigned char, unsigned int) = v5;
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern unsigned short v9 (signed int, unsigned char, signed short);
extern unsigned short (*v10) (signed int, unsigned char, signed short);
extern unsigned short v11 (unsigned int, unsigned short, unsigned short);
extern unsigned short (*v12) (unsigned int, unsigned short, unsigned short);
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
static unsigned short v15 (unsigned short, unsigned short, signed char);
static unsigned short (*v16) (unsigned short, unsigned short, signed char) = v15;
extern unsigned int v17 (unsigned short, unsigned int);
extern unsigned int (*v18) (unsigned short, unsigned int);
extern signed char v19 (void);
extern signed char (*v20) (void);
void v21 (void);
void (*v22) (void) = v21;
extern signed char v23 (signed char, unsigned short, unsigned int, unsigned int);
extern signed char (*v24) (signed char, unsigned short, unsigned int, unsigned int);
extern void v25 (void);
extern void (*v26) (void);
unsigned short v27 (unsigned int, signed short, unsigned char, signed short);
unsigned short (*v28) (unsigned int, signed short, unsigned char, signed short) = v27;
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v109 = 3;
unsigned char v108 = 1;
unsigned short v107 = 7;

unsigned short v27 (unsigned int v110, signed short v111, unsigned char v112, signed short v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 3;
signed short v115 = -1;
unsigned char v114 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (void)
{
{
for (;;) {
unsigned int v119 = 0U;
unsigned char v118 = 6;
signed short v117 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v15 (unsigned short v120, unsigned short v121, signed char v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned int v125 = 1U;
signed int v124 = 3;
signed char v123 = 1;
trace++;
switch (trace)
{
case 4: 
return 3;
default: abort ();
}
}
}
}

signed short v5 (unsigned char v126, unsigned char v127, unsigned int v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = 0;
signed short v130 = -3;
signed short v129 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed short v132;
v132 = v29 ();
history[history_index++] = (int)v132;
}
break;
case 3: 
{
unsigned short v133;
unsigned short v134;
signed char v135;
unsigned short v136;
v133 = 6 + 0;
v134 = 3 - 4;
v135 = 0 - 1;
v136 = v15 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 5: 
{
signed short v137;
v137 = v29 ();
history[history_index++] = (int)v137;
}
break;
case 7: 
{
unsigned int v138;
unsigned char v139;
v138 = 6U - v128;
v139 = v7 (v138);
history[history_index++] = (int)v139;
}
break;
case 9: 
return v130;
default: abort ();
}
}
}
}
