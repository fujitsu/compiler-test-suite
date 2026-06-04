#include <stdlib.h>
unsigned short v1 (unsigned int, signed int, signed int, unsigned char);
unsigned short (*v2) (unsigned int, signed int, signed int, unsigned char) = v1;
extern unsigned char v3 (signed short, unsigned int, signed char);
extern unsigned char (*v4) (signed short, unsigned int, signed char);
extern signed int v5 (signed short, unsigned short, unsigned int);
extern signed int (*v6) (signed short, unsigned short, unsigned int);
static unsigned int v7 (unsigned short);
static unsigned int (*v8) (unsigned short) = v7;
void v9 (signed char);
void (*v10) (signed char) = v9;
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern unsigned int v17 (unsigned short, signed char);
extern unsigned int (*v18) (unsigned short, signed char);
extern unsigned short v19 (unsigned char, signed int);
extern unsigned short (*v20) (unsigned char, signed int);
static unsigned char v21 (unsigned int, signed int);
static unsigned char (*v22) (unsigned int, signed int) = v21;
extern unsigned short v23 (signed short);
extern unsigned short (*v24) (signed short);
extern void v25 (signed short);
extern void (*v26) (signed short);
unsigned short v27 (unsigned int, signed char, signed int);
unsigned short (*v28) (unsigned int, signed char, signed int) = v27;
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v84 = 5U;
signed char v83 = -1;
unsigned int v82 = 1U;

unsigned short v27 (unsigned int v85, signed char v86, signed int v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 1;
unsigned char v89 = 1;
signed char v88 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v21 (unsigned int v91, signed int v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 2;
unsigned short v94 = 1;
signed char v93 = -2;
trace++;
switch (trace)
{
case 10: 
{
signed short v96;
v96 = -3 - -3;
v25 (v96);
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
signed char v99 = 1;
signed int v98 = -3;
unsigned int v97 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed char v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = 2;
unsigned int v102 = 2U;
signed char v101 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v7 (unsigned short v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = 2;
signed int v106 = 2;
signed int v105 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v108;
signed char v109;
unsigned int v110;
v108 = 0 - v104;
v109 = 0 - -3;
v110 = v17 (v108, v109);
history[history_index++] = (int)v110;
}
break;
case 7: 
return 2U;
default: abort ();
}
}
}
}

unsigned short v1 (unsigned int v111, signed int v112, signed int v113, unsigned char v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 3;
signed int v116 = 3;
unsigned char v115 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v118;
unsigned int v119;
v118 = 6 - 6;
v119 = v7 (v118);
history[history_index++] = (int)v119;
}
break;
case 8: 
return 5;
case 9: 
{
unsigned int v120;
signed int v121;
unsigned char v122;
v120 = v111 + 0U;
v121 = v113 + v116;
v122 = v21 (v120, v121);
history[history_index++] = (int)v122;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}
