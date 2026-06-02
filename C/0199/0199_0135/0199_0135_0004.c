#include <stdlib.h>
unsigned char v1 (unsigned short, signed int);
unsigned char (*v2) (unsigned short, signed int) = v1;
extern signed int v3 (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed int (*v4) (unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
static unsigned int v7 (signed short, signed int, signed int);
static unsigned int (*v8) (signed short, signed int, signed int) = v7;
extern unsigned char v9 (unsigned short, signed short);
extern unsigned char (*v10) (unsigned short, signed short);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
void v13 (void);
void (*v14) (void) = v13;
static signed int v15 (unsigned char, unsigned int, signed short, unsigned short);
static signed int (*v16) (unsigned char, unsigned int, signed short, unsigned short) = v15;
extern signed char v17 (signed short);
extern signed char (*v18) (signed short);
extern void v19 (signed short);
extern void (*v20) (signed short);
signed char v21 (signed char);
signed char (*v22) (signed char) = v21;
static signed char v23 (void);
static signed char (*v24) (void) = v23;
signed short v25 (signed char, unsigned short);
signed short (*v26) (signed char, unsigned short) = v25;
extern unsigned char v27 (signed char);
extern unsigned char (*v28) (signed char);
extern void v29 (unsigned char, signed int);
extern void (*v30) (unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v85 = 2;
unsigned int v84 = 4U;
unsigned char v83 = 4;

signed short v25 (signed char v86, unsigned short v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 2;
signed short v89 = 3;
unsigned int v88 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v23 (void)
{
{
for (;;) {
unsigned int v93 = 7U;
unsigned int v92 = 2U;
unsigned char v91 = 4;
trace++;
switch (trace)
{
case 7: 
return 2;
default: abort ();
}
}
}
}

signed char v21 (signed char v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
unsigned int v97 = 7U;
unsigned char v96 = 2;
signed char v95 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v15 (unsigned char v98, unsigned int v99, signed short v100, unsigned short v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned int v104 = 3U;
unsigned char v103 = 0;
unsigned short v102 = 3;
trace++;
switch (trace)
{
case 4: 
return 2;
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
signed short v107 = 0;
signed int v106 = -4;
signed int v105 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v7 (signed short v108, signed int v109, signed int v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 0;
signed char v112 = 2;
signed short v111 = -1;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v114;
unsigned int v115;
signed short v116;
unsigned short v117;
signed int v118;
v114 = 4 - 4;
v115 = 5U - 1U;
v116 = v111 - 1;
v117 = 4 - 3;
v118 = v15 (v114, v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 5: 
return 1U;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v119, signed int v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = 3;
unsigned int v122 = 6U;
unsigned char v121 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v124;
v124 = 2 + 3;
v19 (v124);
}
break;
case 2: 
{
signed short v125;
signed int v126;
signed int v127;
unsigned int v128;
v125 = -3 - 0;
v126 = v120 - -3;
v127 = v120 + v120;
v128 = v7 (v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 6: 
{
signed char v129;
v129 = v23 ();
history[history_index++] = (int)v129;
}
break;
case 8: 
{
unsigned char v130;
signed int v131;
v130 = v121 - v121;
v131 = v120 - v120;
v29 (v130, v131);
}
break;
case 10: 
{
unsigned short v132;
v132 = v5 ();
history[history_index++] = (int)v132;
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}
