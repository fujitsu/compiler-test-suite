#include <stdlib.h>
void v1 (unsigned short, signed int, unsigned char);
void (*v2) (unsigned short, signed int, unsigned char) = v1;
extern void v3 (unsigned char, unsigned int, unsigned short, signed char);
extern void (*v4) (unsigned char, unsigned int, unsigned short, signed char);
static signed int v5 (unsigned short);
static signed int (*v6) (unsigned short) = v5;
extern signed int v7 (signed short, signed short, signed short);
extern signed int (*v8) (signed short, signed short, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
signed short v11 (void);
signed short (*v12) (void) = v11;
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned int v15 (unsigned char, signed char, unsigned int);
extern unsigned int (*v16) (unsigned char, signed char, unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned short v21 (signed short, unsigned char);
extern unsigned short (*v22) (signed short, unsigned char);
static signed char v23 (signed char, signed char, signed int);
static signed char (*v24) (signed char, signed char, signed int) = v23;
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned short v29 (unsigned short, unsigned int);
extern unsigned short (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v99 = -1;
unsigned int v98 = 3U;
unsigned char v97 = 7;

static signed char v23 (signed char v100, signed char v101, signed int v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned short v105 = 5;
signed int v104 = -2;
signed char v103 = 0;
trace++;
switch (trace)
{
case 9: 
return v100;
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
signed char v108 = -3;
unsigned short v107 = 2;
unsigned char v106 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v5 (unsigned short v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = -2;
unsigned char v111 = 7;
unsigned int v110 = 3U;
trace++;
switch (trace)
{
case 1: 
{
signed short v113;
v113 = v13 ();
history[history_index++] = (int)v113;
}
break;
case 3: 
{
signed short v114;
v114 = v13 ();
history[history_index++] = (int)v114;
}
break;
case 5: 
{
signed short v115;
v115 = v13 ();
history[history_index++] = (int)v115;
}
break;
case 7: 
return -1;
case 11: 
return -3;
default: abort ();
}
}
}
}

void v1 (unsigned short v116, signed int v117, unsigned char v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 5;
unsigned short v120 = 3;
unsigned int v119 = 5U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v122;
signed int v123;
v122 = 6 - 3;
v123 = v5 (v122);
history[history_index++] = (int)v123;
}
break;
case 8: 
{
signed char v124;
signed char v125;
signed int v126;
signed char v127;
v124 = -4 + 1;
v125 = -1 - -1;
v126 = v117 + v117;
v127 = v23 (v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 10: 
{
unsigned short v128;
signed int v129;
v128 = v116 - v116;
v129 = v5 (v128);
history[history_index++] = (int)v129;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
