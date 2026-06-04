#include <stdlib.h>
void v1 (unsigned int, unsigned short);
void (*v2) (unsigned int, unsigned short) = v1;
extern signed char v3 (unsigned char, unsigned char, signed short, signed short);
extern signed char (*v4) (unsigned char, unsigned char, signed short, signed short);
static unsigned int v5 (signed char, unsigned char, signed int, unsigned int);
static unsigned int (*v6) (signed char, unsigned char, signed int, unsigned int) = v5;
extern unsigned short v7 (unsigned char, signed short, signed char);
extern unsigned short (*v8) (unsigned char, signed short, signed char);
static unsigned short v9 (void);
static unsigned short (*v10) (void) = v9;
unsigned char v11 (unsigned int, signed char, signed short);
unsigned char (*v12) (unsigned int, signed char, signed short) = v11;
unsigned int v13 (signed int, unsigned short);
unsigned int (*v14) (signed int, unsigned short) = v13;
extern signed int v15 (signed int, signed short, unsigned short, signed char);
extern signed int (*v16) (signed int, signed short, unsigned short, signed char);
extern unsigned int v17 (unsigned short, unsigned int);
extern unsigned int (*v18) (unsigned short, unsigned int);
static signed int v19 (signed char, signed short, unsigned short);
static signed int (*v20) (signed char, signed short, unsigned short) = v19;
extern signed short v21 (signed char, signed int, unsigned int);
extern signed short (*v22) (signed char, signed int, unsigned int);
extern unsigned char v23 (signed short, unsigned int, signed char, signed char);
extern unsigned char (*v24) (signed short, unsigned int, signed char, signed char);
static signed int v25 (signed int);
static signed int (*v26) (signed int) = v25;
static unsigned int v27 (unsigned char);
static unsigned int (*v28) (unsigned char) = v27;
extern signed int v29 (unsigned short, signed char, signed int);
extern signed int (*v30) (unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v71 = -4;
unsigned short v70 = 7;
unsigned char v69 = 7;

static unsigned int v27 (unsigned char v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
unsigned char v75 = 7;
unsigned char v74 = 2;
unsigned int v73 = 0U;
trace++;
switch (trace)
{
case 5: 
return 2U;
case 7: 
{
signed char v76;
signed short v77;
unsigned short v78;
signed int v79;
v76 = 0 + -1;
v77 = 2 - 0;
v78 = 6 - 6;
v79 = v19 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 9: 
{
signed short v80;
unsigned int v81;
signed char v82;
signed char v83;
unsigned char v84;
v80 = -2 + 2;
v81 = v73 - 0U;
v82 = -4 + 3;
v83 = 3 - 0;
v84 = v23 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 13: 
return 4U;
default: abort ();
}
}
}
}

static signed int v25 (signed int v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -1;
signed char v87 = 1;
unsigned short v86 = 1;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v89;
unsigned int v90;
v89 = 5 - 1;
v90 = v27 (v89);
history[history_index++] = (int)v90;
}
break;
case 6: 
{
unsigned char v91;
unsigned int v92;
v91 = 5 + 2;
v92 = v27 (v91);
history[history_index++] = (int)v92;
}
break;
case 14: 
return v85;
default: abort ();
}
}
}
}

static signed int v19 (signed char v93, signed short v94, unsigned short v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 4U;
unsigned char v97 = 4;
unsigned char v96 = 3;
trace++;
switch (trace)
{
case 8: 
return 3;
default: abort ();
}
}
}
}

unsigned int v13 (signed int v99, unsigned short v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = -4;
signed int v102 = -4;
unsigned char v101 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v104, signed char v105, signed short v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = 3;
signed char v108 = -1;
unsigned char v107 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v9 (void)
{
{
for (;;) {
signed short v112 = -1;
unsigned int v111 = 0U;
signed int v110 = -3;
trace++;
switch (trace)
{
case 3: 
{
signed int v113;
signed int v114;
v113 = v110 + v110;
v114 = v25 (v113);
history[history_index++] = (int)v114;
}
break;
case 15: 
return 4;
default: abort ();
}
}
}
}

static unsigned int v5 (signed char v115, unsigned char v116, signed int v117, unsigned int v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 0;
signed short v120 = 3;
signed short v119 = -3;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v122;
v122 = v9 ();
history[history_index++] = (int)v122;
}
break;
case 16: 
return v118;
default: abort ();
}
}
}
}

void v1 (unsigned int v123, unsigned short v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = -2;
unsigned char v126 = 5;
unsigned int v125 = 3U;
trace++;
switch (trace)
{
case 0: 
return;
case 1: 
{
signed char v128;
unsigned char v129;
signed int v130;
unsigned int v131;
unsigned int v132;
v128 = v127 + v127;
v129 = 4 - 5;
v130 = 1 + -3;
v131 = 3U - 4U;
v132 = v5 (v128, v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 11: 
return;
case 17: 
return;
default: abort ();
}
}
}
}
