#include <stdlib.h>
extern unsigned short v5 (signed int, unsigned char, unsigned int, unsigned short);
extern unsigned short (*v6) (signed int, unsigned char, unsigned int, unsigned short);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
signed short v11 (signed char, unsigned short);
signed short (*v12) (signed char, unsigned short) = v11;
static unsigned char v13 (unsigned short, unsigned int, unsigned char);
static unsigned char (*v14) (unsigned short, unsigned int, unsigned char) = v13;
extern signed int v15 (unsigned char);
extern signed int (*v16) (unsigned char);
extern unsigned short v17 (signed int, unsigned short);
extern unsigned short (*v18) (signed int, unsigned short);
extern signed int v19 (signed int, unsigned short, signed int);
extern signed int (*v20) (signed int, unsigned short, signed int);
extern unsigned short v21 (unsigned short, unsigned int, unsigned int);
extern unsigned short (*v22) (unsigned short, unsigned int, unsigned int);
extern unsigned int v23 (unsigned int, signed char, unsigned char);
extern unsigned int (*v24) (unsigned int, signed char, unsigned char);
extern signed int v25 (signed short, signed short, signed short, signed char);
extern signed int (*v26) (signed short, signed short, signed short, signed char);
signed char v27 (signed int);
signed char (*v28) (signed int) = v27;
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v108 = -1;
unsigned int v107 = 5U;
signed int v106 = 1;

void v29 (void)
{
{
for (;;) {
unsigned int v111 = 1U;
unsigned short v110 = 6;
unsigned char v109 = 7;
trace++;
switch (trace)
{
case 2: 
{
signed int v112;
unsigned short v113;
unsigned short v114;
v112 = 2 - -4;
v113 = 2 + v110;
v114 = v17 (v112, v113);
history[history_index++] = (int)v114;
}
break;
case 4: 
{
unsigned short v115;
unsigned int v116;
unsigned char v117;
unsigned char v118;
v115 = 1 - v110;
v116 = 1U - v111;
v117 = v109 + 6;
v118 = v13 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 6: 
return;
default: abort ();
}
}
}
}

signed char v27 (signed int v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 2U;
unsigned char v121 = 3;
unsigned char v120 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v13 (unsigned short v123, unsigned int v124, unsigned char v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = -1;
unsigned int v127 = 2U;
unsigned char v126 = 1;
trace++;
switch (trace)
{
case 5: 
return v125;
default: abort ();
}
}
}
}

signed short v11 (signed char v129, unsigned short v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = -4;
signed char v132 = 0;
signed short v131 = -3;
trace++;
switch (trace)
{
case 9: 
return -1;
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
signed short v136 = 0;
unsigned short v135 = 1;
signed int v134 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
