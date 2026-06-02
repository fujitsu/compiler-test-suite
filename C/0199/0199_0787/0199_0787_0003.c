#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern unsigned short v3 (unsigned char, unsigned char);
extern unsigned short (*v4) (unsigned char, unsigned char);
unsigned int v5 (unsigned char, unsigned short, signed short);
unsigned int (*v6) (unsigned char, unsigned short, signed short) = v5;
extern unsigned char v7 (unsigned int, unsigned short, signed char);
extern unsigned char (*v8) (unsigned int, unsigned short, signed char);
signed char v9 (signed short, signed int, signed char);
signed char (*v10) (signed short, signed int, signed char) = v9;
unsigned int v11 (signed short);
unsigned int (*v12) (signed short) = v11;
extern void v13 (unsigned short, unsigned int, signed char, signed char);
extern void (*v14) (unsigned short, unsigned int, signed char, signed char);
signed char v15 (unsigned char);
signed char (*v16) (unsigned char) = v15;
extern void v17 (unsigned int, unsigned short, signed char);
extern void (*v18) (unsigned int, unsigned short, signed char);
extern unsigned char v19 (signed int, unsigned short, unsigned char);
extern unsigned char (*v20) (signed int, unsigned short, unsigned char);
unsigned short v21 (signed int, unsigned char);
unsigned short (*v22) (signed int, unsigned char) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
signed int v25 (signed short, unsigned char);
signed int (*v26) (signed short, unsigned char) = v25;
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
static unsigned short v29 (unsigned int, unsigned int);
static unsigned short (*v30) (unsigned int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v100 = 1;
unsigned short v99 = 1;
signed short v98 = -2;

static unsigned short v29 (unsigned int v101, unsigned int v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = 0;
signed int v104 = -3;
unsigned int v103 = 5U;
trace++;
switch (trace)
{
case 11: 
return 6;
default: abort ();
}
}
}
}

signed int v25 (signed short v106, unsigned char v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed char v110 = 0;
signed char v109 = -2;
unsigned int v108 = 7U;
trace++;
switch (trace)
{
case 3: 
return -4;
default: abort ();
}
}
}
}

unsigned short v21 (signed int v111, unsigned char v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 6;
unsigned short v114 = 4;
unsigned char v113 = 5;
trace++;
switch (trace)
{
case 8: 
return v114;
case 10: 
{
unsigned int v116;
unsigned int v117;
unsigned short v118;
v116 = 1U - 7U;
v117 = 7U - 7U;
v118 = v29 (v116, v117);
history[history_index++] = (int)v118;
}
break;
case 12: 
return v114;
default: abort ();
}
}
}
}

signed char v15 (unsigned char v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed int v122 = 3;
unsigned short v121 = 6;
unsigned int v120 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed short v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
signed int v126 = 0;
signed short v125 = 3;
signed short v124 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed short v127, signed int v128, signed char v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed char v132 = 2;
signed char v131 = 3;
signed short v130 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v133, unsigned short v134, signed short v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed short v138 = -3;
signed short v137 = -3;
signed int v136 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
