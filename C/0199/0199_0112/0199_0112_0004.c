#include <stdlib.h>
unsigned short v1 (unsigned short, unsigned char, unsigned short);
unsigned short (*v2) (unsigned short, unsigned char, unsigned short) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (unsigned int, signed int, unsigned int, signed int);
extern signed int (*v6) (unsigned int, signed int, unsigned int, signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
unsigned char v9 (unsigned char, signed char, signed int, signed char);
unsigned char (*v10) (unsigned char, signed char, signed int, signed char) = v9;
extern unsigned int v11 (unsigned char, unsigned short, signed char);
extern unsigned int (*v12) (unsigned char, unsigned short, signed char);
unsigned char v13 (unsigned short, signed char, signed short);
unsigned char (*v14) (unsigned short, signed char, signed short) = v13;
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
extern signed short v17 (signed short, signed char, signed int, signed char);
extern signed short (*v18) (signed short, signed char, signed int, signed char);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
extern signed short v21 (void);
extern signed short (*v22) (void);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
static unsigned char v25 (unsigned short, unsigned short);
static unsigned char (*v26) (unsigned short, unsigned short) = v25;
extern signed int v27 (signed short);
extern signed int (*v28) (signed short);
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v99 = 2;
unsigned char v98 = 4;
unsigned short v97 = 0;

static unsigned char v25 (unsigned short v100, unsigned short v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed char v104 = -2;
unsigned char v103 = 2;
unsigned short v102 = 7;
trace++;
switch (trace)
{
case 2: 
return 0;
default: abort ();
}
}
}
}

unsigned int v23 (void)
{
{
for (;;) {
unsigned short v107 = 0;
unsigned short v106 = 2;
unsigned char v105 = 5;
trace++;
switch (trace)
{
case 5: 
return 2U;
case 7: 
return 0U;
case 11: 
return 3U;
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v108, signed char v109, signed short v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed int v113 = -4;
unsigned char v112 = 7;
signed short v111 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v114, signed char v115, signed int v116, signed char v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 4;
unsigned int v119 = 2U;
signed char v118 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned short v121, unsigned char v122, unsigned short v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 2;
signed int v125 = 2;
signed char v124 = 1;
trace++;
switch (trace)
{
case 0: 
return v121;
case 1: 
{
unsigned short v127;
unsigned short v128;
unsigned char v129;
v127 = v123 + 0;
v128 = v123 + v123;
v129 = v25 (v127, v128);
history[history_index++] = (int)v129;
}
break;
case 3: 
{
unsigned char v130;
unsigned char v131;
v130 = v126 + v122;
v131 = v19 (v130);
history[history_index++] = (int)v131;
}
break;
case 9: 
{
unsigned char v132;
unsigned char v133;
v132 = v122 - 7;
v133 = v19 (v132);
history[history_index++] = (int)v133;
}
break;
case 13: 
return v123;
default: abort ();
}
}
}
}
