#include <stdlib.h>
extern signed char v1 (unsigned int, signed int, unsigned char, unsigned char);
extern signed char (*v2) (unsigned int, signed int, unsigned char, unsigned char);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v7 (unsigned int, signed int);
extern unsigned char (*v8) (unsigned int, signed int);
extern signed int v9 (signed short, signed char, unsigned int, unsigned char);
extern signed int (*v10) (signed short, signed char, unsigned int, unsigned char);
static unsigned int v11 (void);
static unsigned int (*v12) (void) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
signed char v17 (unsigned short);
signed char (*v18) (unsigned short) = v17;
unsigned char v19 (signed int, signed int, signed short);
unsigned char (*v20) (signed int, signed int, signed short) = v19;
unsigned char v21 (unsigned int, signed int);
unsigned char (*v22) (unsigned int, signed int) = v21;
void v23 (unsigned short, signed char);
void (*v24) (unsigned short, signed char) = v23;
static signed char v25 (unsigned short, signed int, signed char, signed char);
static signed char (*v26) (unsigned short, signed int, signed char, signed char) = v25;
extern unsigned char v27 (unsigned char, unsigned char);
extern unsigned char (*v28) (unsigned char, unsigned char);
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v101 = -4;
signed int v100 = 2;
unsigned int v99 = 3U;

static signed char v25 (unsigned short v102, signed int v103, signed char v104, signed char v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 0;
unsigned short v107 = 0;
signed int v106 = 0;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v109;
v109 = v11 ();
history[history_index++] = (int)v109;
}
break;
case 9: 
{
unsigned int v110;
v110 = v11 ();
history[history_index++] = (int)v110;
}
break;
case 11: 
return v104;
default: abort ();
}
}
}
}

void v23 (unsigned short v111, signed char v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned short v115 = 7;
signed char v114 = -4;
signed short v113 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (unsigned int v116, signed int v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 4U;
signed char v119 = -4;
signed char v118 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed int v121, signed int v122, signed short v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = -4;
unsigned char v125 = 5;
signed char v124 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned short v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
unsigned int v130 = 4U;
signed char v129 = 3;
signed char v128 = 3;
trace++;
switch (trace)
{
case 2: 
return v128;
case 6: 
{
unsigned short v131;
signed int v132;
signed char v133;
signed char v134;
signed char v135;
v131 = v127 + 1;
v132 = -2 - 1;
v133 = v128 - v128;
v134 = v128 + 1;
v135 = v25 (v131, v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 12: 
return v128;
default: abort ();
}
}
}
}

static unsigned int v11 (void)
{
{
for (;;) {
unsigned short v138 = 6;
signed int v137 = 0;
signed int v136 = 0;
trace++;
switch (trace)
{
case 8: 
return 5U;
case 10: 
return 5U;
default: abort ();
}
}
}
}
