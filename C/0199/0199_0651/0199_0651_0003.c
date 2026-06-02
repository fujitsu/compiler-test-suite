#include <stdlib.h>
extern void v3 (signed int, unsigned char, unsigned short, signed char);
extern void (*v4) (signed int, unsigned char, unsigned short, signed char);
extern void v5 (signed char, signed int, unsigned char);
extern void (*v6) (signed char, signed int, unsigned char);
unsigned short v7 (signed char, unsigned short);
unsigned short (*v8) (signed char, unsigned short) = v7;
extern unsigned char v9 (unsigned char, signed char);
extern unsigned char (*v10) (unsigned char, signed char);
extern signed char v11 (signed char, signed short, signed short, unsigned char);
extern signed char (*v12) (signed char, signed short, signed short, unsigned char);
unsigned short v13 (signed short);
unsigned short (*v14) (signed short) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned char v21 (signed short, signed int);
extern unsigned char (*v22) (signed short, signed int);
signed int v23 (void);
signed int (*v24) (void) = v23;
static unsigned short v25 (unsigned int, signed int);
static unsigned short (*v26) (unsigned int, signed int) = v25;
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
signed int v29 (signed short);
signed int (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v98 = -3;
signed int v97 = 2;
unsigned short v96 = 0;

signed int v29 (signed short v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
signed int v102 = 2;
signed char v101 = 2;
signed char v100 = -3;
trace++;
switch (trace)
{
case 1: 
return -1;
case 3: 
return v102;
default: abort ();
}
}
}
}

static unsigned short v25 (unsigned int v103, signed int v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = 1;
unsigned int v106 = 0U;
unsigned int v105 = 5U;
trace++;
switch (trace)
{
case 7: 
return 4;
case 9: 
return 1;
case 11: 
return 3;
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
signed short v110 = -2;
signed short v109 = -3;
signed short v108 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed short v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed short v114 = -4;
signed char v113 = 3;
signed char v112 = 3;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v115;
signed int v116;
unsigned short v117;
v115 = 6U - 4U;
v116 = -1 + 2;
v117 = v25 (v115, v116);
history[history_index++] = (int)v117;
}
break;
case 8: 
{
unsigned int v118;
signed int v119;
unsigned short v120;
v118 = 5U - 7U;
v119 = 3 - -3;
v120 = v25 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 10: 
{
unsigned int v121;
signed int v122;
unsigned short v123;
v121 = 0U - 0U;
v122 = -4 + 3;
v123 = v25 (v121, v122);
history[history_index++] = (int)v123;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

unsigned short v7 (signed char v124, unsigned short v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = 3;
unsigned short v127 = 0;
signed short v126 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
