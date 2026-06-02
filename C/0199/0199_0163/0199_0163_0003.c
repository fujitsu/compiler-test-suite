#include <stdlib.h>
unsigned short v1 (signed char, unsigned char);
unsigned short (*v2) (signed char, unsigned char) = v1;
static signed short v3 (void);
static signed short (*v4) (void) = v3;
extern signed short v5 (signed short, signed char, signed int);
extern signed short (*v6) (signed short, signed char, signed int);
extern signed char v7 (signed short, signed int);
extern signed char (*v8) (signed short, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
extern unsigned short v13 (signed int);
extern unsigned short (*v14) (signed int);
extern unsigned short v15 (unsigned short, signed int, signed short);
extern unsigned short (*v16) (unsigned short, signed int, signed short);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern void v19 (unsigned short, signed short, signed int);
extern void (*v20) (unsigned short, signed short, signed int);
signed int v23 (signed short, signed int);
signed int (*v24) (signed short, signed int) = v23;
extern signed short v25 (signed short, signed char, unsigned char, signed char);
extern signed short (*v26) (signed short, signed char, unsigned char, signed char);
signed char v27 (signed int, signed int);
signed char (*v28) (signed int, signed int) = v27;
extern unsigned int v29 (unsigned short, signed short);
extern unsigned int (*v30) (unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v103 = 0U;
unsigned char v102 = 3;
unsigned char v101 = 7;

signed char v27 (signed int v104, signed int v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = -2;
signed short v107 = -3;
signed short v106 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed short v109, signed int v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned char v113 = 1;
signed int v112 = 2;
unsigned char v111 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
signed int v116 = 2;
signed short v115 = 2;
signed char v114 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (void)
{
{
for (;;) {
signed char v119 = -1;
signed int v118 = -1;
signed short v117 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v3 (void)
{
{
for (;;) {
unsigned char v122 = 1;
signed short v121 = 3;
unsigned char v120 = 4;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v123;
signed int v124;
signed short v125;
unsigned short v126;
v123 = 0 + 6;
v124 = 2 - -3;
v125 = -2 + -1;
v126 = v15 (v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 13: 
return v121;
default: abort ();
}
}
}
}

unsigned short v1 (signed char v127, unsigned char v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = 0;
signed char v130 = 1;
unsigned int v129 = 0U;
trace++;
switch (trace)
{
case 0: 
{
signed int v132;
unsigned short v133;
v132 = -3 - -2;
v133 = v13 (v132);
history[history_index++] = (int)v133;
}
break;
case 2: 
{
unsigned char v134;
v134 = v9 ();
history[history_index++] = (int)v134;
}
break;
case 4: 
{
signed short v135;
v135 = v3 ();
history[history_index++] = (int)v135;
}
break;
case 14: 
return 6;
default: abort ();
}
}
}
}
