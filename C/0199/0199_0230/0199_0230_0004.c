#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
static unsigned short v3 (signed short);
static unsigned short (*v4) (signed short) = v3;
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern void v7 (unsigned char, unsigned int, unsigned short);
extern void (*v8) (unsigned char, unsigned int, unsigned short);
extern signed short v9 (signed int);
extern signed short (*v10) (signed int);
extern void v11 (void);
extern void (*v12) (void);
extern signed short v13 (signed int, signed int, unsigned char);
extern signed short (*v14) (signed int, signed int, unsigned char);
extern signed char v15 (signed char, unsigned char);
extern signed char (*v16) (signed char, unsigned char);
signed short v19 (void);
signed short (*v20) (void) = v19;
static void v21 (signed char, unsigned short, signed int);
static void (*v22) (signed char, unsigned short, signed int) = v21;
unsigned short v23 (unsigned char, unsigned char, unsigned int);
unsigned short (*v24) (unsigned char, unsigned char, unsigned int) = v23;
unsigned short v25 (unsigned int, unsigned short);
unsigned short (*v26) (unsigned int, unsigned short) = v25;
extern unsigned int v27 (signed char);
extern unsigned int (*v28) (signed char);
extern void v29 (unsigned int, signed short, signed short, signed short);
extern void (*v30) (unsigned int, signed short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v95 = 3;
signed short v94 = 2;
unsigned char v93 = 2;

unsigned short v25 (unsigned int v96, unsigned short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = -2;
signed int v99 = -3;
signed int v98 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (unsigned char v101, unsigned char v102, unsigned int v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = -4;
unsigned char v105 = 2;
signed char v104 = -1;
trace++;
switch (trace)
{
case 4: 
return 0;
default: abort ();
}
}
}
}

static void v21 (signed char v107, unsigned short v108, signed int v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed int v112 = 1;
unsigned short v111 = 0;
unsigned int v110 = 2U;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

signed short v19 (void)
{
{
for (;;) {
signed int v115 = -4;
unsigned short v114 = 0;
unsigned short v113 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed short v118 = -4;
unsigned int v117 = 1U;
signed short v116 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v3 (signed short v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = 1;
unsigned short v121 = 6;
signed short v120 = -2;
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

void v1 (void)
{
{
for (;;) {
unsigned short v125 = 1;
signed char v124 = 2;
unsigned short v123 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v126;
unsigned short v127;
v126 = -3 - 1;
v127 = v3 (v126);
history[history_index++] = (int)v127;
}
break;
case 2: 
{
unsigned char v128;
unsigned int v129;
unsigned short v130;
v128 = 4 + 7;
v129 = 0U + 1U;
v130 = v123 + v125;
v7 (v128, v129, v130);
}
break;
case 8: 
{
signed char v131;
unsigned int v132;
v131 = -1 - 3;
v132 = v27 (v131);
history[history_index++] = (int)v132;
}
break;
case 10: 
{
signed char v133;
unsigned short v134;
signed int v135;
v133 = v124 - 2;
v134 = v123 - 1;
v135 = 1 + -4;
v21 (v133, v134, v135);
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
