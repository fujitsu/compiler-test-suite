#include <stdlib.h>
extern signed char v1 (signed short, signed char, signed char);
extern signed char (*v2) (signed short, signed char, signed char);
extern unsigned int v3 (unsigned short, signed char, unsigned int);
extern unsigned int (*v4) (unsigned short, signed char, unsigned int);
extern unsigned short v5 (signed short, signed short);
extern unsigned short (*v6) (signed short, signed short);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
unsigned char v9 (signed int, signed char, signed short, signed short);
unsigned char (*v10) (signed int, signed char, signed short, signed short) = v9;
extern signed short v11 (signed short, signed int);
extern signed short (*v12) (signed short, signed int);
signed short v13 (signed int, signed int, unsigned short, signed short);
signed short (*v14) (signed int, signed int, unsigned short, signed short) = v13;
signed char v15 (void);
signed char (*v16) (void) = v15;
extern unsigned char v17 (unsigned char, unsigned short, signed short);
extern unsigned char (*v18) (unsigned char, unsigned short, signed short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (signed char, unsigned char);
extern unsigned short (*v22) (signed char, unsigned char);
unsigned int v23 (signed int, signed int, signed int);
unsigned int (*v24) (signed int, signed int, signed int) = v23;
extern unsigned char v25 (unsigned short, unsigned int);
extern unsigned char (*v26) (unsigned short, unsigned int);
static signed short v27 (void);
static signed short (*v28) (void) = v27;
signed short v29 (unsigned short);
signed short (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v98 = 1U;
unsigned short v97 = 0;
signed short v96 = 1;

signed short v29 (unsigned short v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
signed char v102 = 1;
signed char v101 = 2;
unsigned short v100 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v27 (void)
{
{
for (;;) {
unsigned char v105 = 1;
signed char v104 = 1;
unsigned char v103 = 5;
trace++;
switch (trace)
{
case 2: 
return 3;
case 4: 
return 3;
case 6: 
return -3;
case 8: 
return -2;
case 10: 
return -1;
default: abort ();
}
}
}
}

unsigned int v23 (signed int v106, signed int v107, signed int v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = -4;
unsigned char v110 = 4;
signed int v109 = -4;
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
unsigned int v114 = 5U;
signed short v113 = 0;
signed short v112 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed int v115, signed int v116, unsigned short v117, signed short v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = -1;
unsigned short v120 = 6;
signed char v119 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed short v122;
v122 = v27 ();
history[history_index++] = (int)v122;
}
break;
case 3: 
{
signed short v123;
v123 = v27 ();
history[history_index++] = (int)v123;
}
break;
case 5: 
{
signed short v124;
v124 = v27 ();
history[history_index++] = (int)v124;
}
break;
case 7: 
{
signed short v125;
v125 = v27 ();
history[history_index++] = (int)v125;
}
break;
case 9: 
{
signed short v126;
v126 = v27 ();
history[history_index++] = (int)v126;
}
break;
case 11: 
return v118;
default: abort ();
}
}
}
}

unsigned char v9 (signed int v127, signed char v128, signed short v129, signed short v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = 0;
signed int v132 = -1;
unsigned short v131 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
