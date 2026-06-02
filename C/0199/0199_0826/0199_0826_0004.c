#include <stdlib.h>
unsigned char v1 (signed char, unsigned short, signed char, signed int);
unsigned char (*v2) (signed char, unsigned short, signed char, signed int) = v1;
static signed short v3 (void);
static signed short (*v4) (void) = v3;
unsigned short v5 (signed short, signed char, signed char);
unsigned short (*v6) (signed short, signed char, signed char) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (signed short, unsigned char);
extern void (*v10) (signed short, unsigned char);
extern unsigned char v11 (unsigned short, unsigned int);
extern unsigned char (*v12) (unsigned short, unsigned int);
extern signed char v13 (signed short, unsigned int);
extern signed char (*v14) (signed short, unsigned int);
extern unsigned int v15 (signed char, unsigned char, signed short);
extern unsigned int (*v16) (signed char, unsigned char, signed short);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern signed int v19 (unsigned char, signed short);
extern signed int (*v20) (unsigned char, signed short);
extern void v21 (unsigned char, signed short, unsigned char, unsigned short);
extern void (*v22) (unsigned char, signed short, unsigned char, unsigned short);
extern unsigned int v23 (unsigned int, signed int, signed int);
extern unsigned int (*v24) (unsigned int, signed int, signed int);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned short v27 (unsigned int, signed int, signed char);
extern unsigned short (*v28) (unsigned int, signed int, signed char);
extern void v29 (signed int, unsigned short);
extern void (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v112 = -3;
signed short v111 = 2;
signed char v110 = 1;

unsigned short v5 (signed short v113, signed char v114, signed char v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 7U;
signed char v117 = 0;
unsigned int v116 = 3U;
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
signed short v121 = -4;
unsigned char v120 = 0;
unsigned short v119 = 5;
trace++;
switch (trace)
{
case 3: 
return v121;
case 11: 
return -1;
default: abort ();
}
}
}
}

unsigned char v1 (signed char v122, unsigned short v123, signed char v124, signed int v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = -2;
unsigned short v127 = 6;
signed char v126 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v129;
v129 = v25 ();
history[history_index++] = (int)v129;
}
break;
case 2: 
{
signed short v130;
v130 = v3 ();
history[history_index++] = (int)v130;
}
break;
case 4: 
{
unsigned char v131;
signed short v132;
unsigned char v133;
unsigned short v134;
v131 = 1 + 3;
v132 = v128 - v128;
v133 = 4 + 6;
v134 = v123 + 2;
v21 (v131, v132, v133, v134);
}
break;
case 6: 
{
unsigned short v135;
v135 = v25 ();
history[history_index++] = (int)v135;
}
break;
case 8: 
{
unsigned short v136;
v136 = v25 ();
history[history_index++] = (int)v136;
}
break;
case 10: 
{
signed short v137;
v137 = v3 ();
history[history_index++] = (int)v137;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
