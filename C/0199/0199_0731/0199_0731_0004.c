#include <stdlib.h>
void v3 (unsigned short);
void (*v4) (unsigned short) = v3;
static void v5 (signed int, unsigned short, unsigned int);
static void (*v6) (signed int, unsigned short, unsigned int) = v5;
void v7 (signed char, signed char);
void (*v8) (signed char, signed char) = v7;
extern void v9 (unsigned int, unsigned char, signed int, signed int);
extern void (*v10) (unsigned int, unsigned char, signed int, signed int);
unsigned int v11 (signed short, signed char);
unsigned int (*v12) (signed short, signed char) = v11;
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern signed int v15 (signed int, signed char, unsigned short, unsigned char);
extern signed int (*v16) (signed int, signed char, unsigned short, unsigned char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (unsigned int, signed short, unsigned short);
extern void (*v26) (unsigned int, signed short, unsigned short);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed char, unsigned int);
extern unsigned short (*v30) (signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v101 = 3U;
unsigned char v100 = 5;
signed char v99 = -3;

unsigned int v19 (void)
{
{
for (;;) {
unsigned short v104 = 4;
signed char v103 = -2;
signed short v102 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed short v105, signed char v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = 2;
signed short v108 = 0;
signed short v107 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed char v110, signed char v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 6U;
signed int v113 = -1;
signed short v112 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v5 (signed int v115, unsigned short v116, unsigned int v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = 0;
signed char v119 = -1;
unsigned char v118 = 0;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v121;
signed short v122;
unsigned short v123;
v121 = 2U + v117;
v122 = 2 + -4;
v123 = 6 - v116;
v25 (v121, v122, v123);
}
break;
case 6: 
{
unsigned int v124;
signed short v125;
unsigned short v126;
v124 = 5U + 6U;
v125 = v120 - 2;
v126 = 3 + 0;
v25 (v124, v125, v126);
}
break;
case 8: 
{
unsigned int v127;
signed short v128;
unsigned short v129;
v127 = v117 - v117;
v128 = -4 + v120;
v129 = 0 + 5;
v25 (v127, v128, v129);
}
break;
case 10: 
return;
default: abort ();
}
}
}
}

void v3 (unsigned short v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = 0;
unsigned int v132 = 5U;
signed short v131 = -2;
trace++;
switch (trace)
{
case 3: 
{
signed int v134;
unsigned short v135;
unsigned int v136;
v134 = v133 + -2;
v135 = v130 + v130;
v136 = v132 - 2U;
v5 (v134, v135, v136);
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
