#include <stdlib.h>
extern void v1 (unsigned short, signed char, unsigned short);
extern void (*v2) (unsigned short, signed char, unsigned short);
extern signed char v3 (signed char, signed short, signed int);
extern signed char (*v4) (signed char, signed short, signed int);
extern void v5 (signed char, signed char);
extern void (*v6) (signed char, signed char);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern signed char v9 (signed short, signed short, unsigned int);
extern signed char (*v10) (signed short, signed short, unsigned int);
signed char v11 (signed char, unsigned int, signed short, unsigned int);
signed char (*v12) (signed char, unsigned int, signed short, unsigned int) = v11;
extern unsigned short v13 (unsigned char, signed int, signed int, unsigned short);
extern unsigned short (*v14) (unsigned char, signed int, signed int, unsigned short);
static void v15 (signed int, signed int, signed int);
static void (*v16) (signed int, signed int, signed int) = v15;
void v17 (void);
void (*v18) (void) = v17;
extern unsigned short v19 (signed int, signed int, unsigned char, signed char);
extern unsigned short (*v20) (signed int, signed int, unsigned char, signed char);
extern unsigned int v21 (signed char, unsigned short);
extern unsigned int (*v22) (signed char, unsigned short);
unsigned int v23 (signed char);
unsigned int (*v24) (signed char) = v23;
extern signed short v25 (unsigned short, unsigned short);
extern signed short (*v26) (unsigned short, unsigned short);
static signed char v27 (signed short, signed char);
static signed char (*v28) (signed short, signed char) = v27;
unsigned char v29 (unsigned int, unsigned char);
unsigned char (*v30) (unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v111 = 2U;
signed short v110 = -2;
unsigned int v109 = 0U;

unsigned char v29 (unsigned int v112, unsigned char v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed short v116 = 2;
unsigned char v115 = 6;
unsigned int v114 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v27 (signed short v117, signed char v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = 0;
unsigned char v120 = 1;
signed short v119 = 2;
trace++;
switch (trace)
{
case 8: 
return v118;
case 10: 
{
signed int v122;
signed int v123;
signed int v124;
v122 = -2 - -2;
v123 = 2 + 3;
v124 = 0 - 1;
v15 (v122, v123, v124);
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}

unsigned int v23 (signed char v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
unsigned short v128 = 0;
signed int v127 = 3;
unsigned short v126 = 4;
trace++;
switch (trace)
{
case 5: 
return 0U;
case 7: 
{
signed short v129;
signed char v130;
signed char v131;
v129 = -4 + 1;
v130 = v125 + 2;
v131 = v27 (v129, v130);
history[history_index++] = (int)v131;
}
break;
case 9: 
{
signed short v132;
signed char v133;
signed char v134;
v132 = 2 + -2;
v133 = v125 + v125;
v134 = v27 (v132, v133);
history[history_index++] = (int)v134;
}
break;
case 13: 
return 1U;
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
signed short v137 = 2;
unsigned short v136 = 2;
signed int v135 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v15 (signed int v138, signed int v139, signed int v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned int v143 = 0U;
unsigned short v142 = 6;
signed char v141 = 3;
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

signed char v11 (signed char v144, unsigned int v145, signed short v146, unsigned int v147)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed int v150 = 0;
signed char v149 = 0;
unsigned int v148 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
unsigned int v153 = 1U;
signed int v152 = -4;
unsigned char v151 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
