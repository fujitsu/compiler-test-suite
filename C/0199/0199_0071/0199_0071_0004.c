#include <stdlib.h>
unsigned int v1 (signed char, signed char, unsigned int, signed short);
unsigned int (*v2) (signed char, signed char, unsigned int, signed short) = v1;
extern void v3 (unsigned short, signed short);
extern void (*v4) (unsigned short, signed short);
void v5 (unsigned short);
void (*v6) (unsigned short) = v5;
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern signed int v11 (signed short);
extern signed int (*v12) (signed short);
signed int v13 (unsigned short, unsigned int, unsigned int);
signed int (*v14) (unsigned short, unsigned int, unsigned int) = v13;
signed char v15 (void);
signed char (*v16) (void) = v15;
unsigned int v17 (signed int);
unsigned int (*v18) (signed int) = v17;
signed char v19 (unsigned int, unsigned int, unsigned short);
signed char (*v20) (unsigned int, unsigned int, unsigned short) = v19;
extern unsigned short v21 (signed short, signed char, signed char, signed int);
extern unsigned short (*v22) (signed short, signed char, signed char, signed int);
extern unsigned char v23 (signed short, signed int);
extern unsigned char (*v24) (signed short, signed int);
static unsigned short v25 (unsigned int, unsigned char, signed short);
static unsigned short (*v26) (unsigned int, unsigned char, signed short) = v25;
unsigned short v27 (unsigned int, signed char, unsigned int);
unsigned short (*v28) (unsigned int, signed char, unsigned int) = v27;
extern unsigned short v29 (unsigned short, unsigned short, unsigned short);
extern unsigned short (*v30) (unsigned short, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v92 = 2U;
unsigned short v91 = 1;
unsigned char v90 = 6;

unsigned short v27 (unsigned int v93, signed char v94, unsigned int v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed char v98 = 3;
signed char v97 = 0;
signed char v96 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v25 (unsigned int v99, unsigned char v100, signed short v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed int v104 = -3;
unsigned short v103 = 2;
signed char v102 = -2;
trace++;
switch (trace)
{
case 1: 
return v103;
case 3: 
return 3;
default: abort ();
}
}
}
}

signed char v19 (unsigned int v105, unsigned int v106, unsigned short v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned int v110 = 6U;
signed short v109 = 1;
signed int v108 = -4;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v111;
unsigned short v112;
unsigned short v113;
unsigned short v114;
v111 = v107 - 7;
v112 = 0 - v107;
v113 = 7 - 1;
v114 = v29 (v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

unsigned int v17 (signed int v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = -1;
signed short v117 = 0;
unsigned char v116 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
signed int v121 = 3;
signed int v120 = 1;
unsigned int v119 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned short v122, unsigned int v123, unsigned int v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 5U;
signed short v126 = -2;
unsigned int v125 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned short v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
unsigned short v131 = 7;
unsigned char v130 = 0;
signed short v129 = 1;
trace++;
switch (trace)
{
case 6: 
return;
case 8: 
return;
default: abort ();
}
}
}
}

unsigned int v1 (signed char v132, signed char v133, unsigned int v134, signed short v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 5;
signed char v137 = -2;
signed int v136 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v139;
unsigned char v140;
signed short v141;
unsigned short v142;
v139 = v134 - v134;
v140 = 3 + 0;
v141 = -2 + 2;
v142 = v25 (v139, v140, v141);
history[history_index++] = (int)v142;
}
break;
case 2: 
{
unsigned int v143;
unsigned char v144;
signed short v145;
unsigned short v146;
v143 = 4U - v134;
v144 = 1 + 7;
v145 = -2 + -1;
v146 = v25 (v143, v144, v145);
history[history_index++] = (int)v146;
}
break;
case 4: 
{
unsigned char v147;
signed int v148;
v147 = 0 - 7;
v148 = v9 (v147);
history[history_index++] = (int)v148;
}
break;
case 14: 
return 5U;
default: abort ();
}
}
}
}
