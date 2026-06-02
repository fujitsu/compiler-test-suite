#include <stdlib.h>
unsigned int v1 (signed int, signed short, unsigned short, unsigned char);
unsigned int (*v2) (signed int, signed short, unsigned short, unsigned char) = v1;
signed short v3 (void);
signed short (*v4) (void) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
static signed short v9 (signed char, unsigned int, unsigned short, unsigned int);
static signed short (*v10) (signed char, unsigned int, unsigned short, unsigned int) = v9;
static unsigned char v11 (unsigned char);
static unsigned char (*v12) (unsigned char) = v11;
extern unsigned int v13 (signed int, unsigned int);
extern unsigned int (*v14) (signed int, unsigned int);
extern signed int v15 (signed char, signed short);
extern signed int (*v16) (signed char, signed short);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern unsigned char v19 (unsigned char, unsigned int);
extern unsigned char (*v20) (unsigned char, unsigned int);
extern unsigned short v21 (unsigned short, unsigned short);
extern unsigned short (*v22) (unsigned short, unsigned short);
extern signed short v23 (signed int, unsigned int, signed int, signed char);
extern signed short (*v24) (signed int, unsigned int, signed int, signed char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned int v27 (unsigned char, unsigned short);
extern unsigned int (*v28) (unsigned char, unsigned short);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v94 = 1;
unsigned short v93 = 2;
signed int v92 = -3;

signed int v29 (void)
{
{
for (;;) {
signed short v97 = 0;
unsigned short v96 = 2;
signed int v95 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v11 (unsigned char v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 4;
unsigned short v100 = 5;
unsigned char v99 = 7;
trace++;
switch (trace)
{
case 10: 
return v101;
default: abort ();
}
}
}
}

static signed short v9 (signed char v102, unsigned int v103, unsigned short v104, unsigned int v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = 3;
signed short v107 = 3;
unsigned int v106 = 2U;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v109;
unsigned char v110;
v109 = 3 + 5;
v110 = v11 (v109);
history[history_index++] = (int)v110;
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
signed int v113 = -4;
signed int v112 = 1;
signed char v111 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed int v114, signed short v115, unsigned short v116, unsigned char v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 0U;
unsigned int v119 = 7U;
unsigned char v118 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v121;
unsigned short v122;
unsigned int v123;
v121 = 3 + v117;
v122 = 6 - v116;
v123 = v27 (v121, v122);
history[history_index++] = (int)v123;
}
break;
case 6: 
{
unsigned short v124;
unsigned short v125;
unsigned short v126;
v124 = v116 + 6;
v125 = 6 - v116;
v126 = v21 (v124, v125);
history[history_index++] = (int)v126;
}
break;
case 8: 
{
signed char v127;
unsigned int v128;
unsigned short v129;
unsigned int v130;
signed short v131;
v127 = 0 + -1;
v128 = v120 - v119;
v129 = 2 + v116;
v130 = 1U + v120;
v131 = v9 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 12: 
return v119;
default: abort ();
}
}
}
}
