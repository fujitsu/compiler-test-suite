#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern void v3 (signed short, signed char, signed short, signed int);
extern void (*v4) (signed short, signed char, signed short, signed int);
unsigned char v5 (unsigned char, signed short);
unsigned char (*v6) (unsigned char, signed short) = v5;
extern signed char v7 (signed short, signed short);
extern signed char (*v8) (signed short, signed short);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern signed int v11 (signed short, signed short);
extern signed int (*v12) (signed short, signed short);
extern void v13 (unsigned int, signed int);
extern void (*v14) (unsigned int, signed int);
void v15 (unsigned char);
void (*v16) (unsigned char) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (signed int, unsigned int, unsigned int, signed int);
extern unsigned char (*v20) (signed int, unsigned int, unsigned int, signed int);
extern unsigned short v21 (unsigned short, signed int);
extern unsigned short (*v22) (unsigned short, signed int);
unsigned char v23 (signed int);
unsigned char (*v24) (signed int) = v23;
static signed short v25 (signed int, signed char);
static signed short (*v26) (signed int, signed char) = v25;
extern signed int v27 (unsigned char, unsigned char);
extern signed int (*v28) (unsigned char, unsigned char);
extern void v29 (unsigned char, unsigned short);
extern void (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v113 = 3;
signed char v112 = 1;
unsigned char v111 = 0;

static signed short v25 (signed int v114, signed char v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = 0;
signed short v117 = 0;
unsigned short v116 = 2;
trace++;
switch (trace)
{
case 6: 
{
unsigned char v119;
v119 = 3 + 6;
v9 (v119);
}
break;
case 9: 
{
unsigned char v120;
unsigned short v121;
v120 = 4 + 4;
v121 = v116 + 1;
v29 (v120, v121);
}
break;
case 11: 
return v118;
case 14: 
return v117;
default: abort ();
}
}
}
}

unsigned char v23 (signed int v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
unsigned char v125 = 3;
signed short v124 = 0;
signed int v123 = -1;
trace++;
switch (trace)
{
case 5: 
{
signed int v126;
signed char v127;
signed short v128;
v126 = v122 + -4;
v127 = 1 + -4;
v128 = v25 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 8: 
{
signed int v129;
signed char v130;
signed short v131;
v129 = v122 + v122;
v130 = 0 - 1;
v131 = v25 (v129, v130);
history[history_index++] = (int)v131;
}
break;
case 12: 
return v125;
case 15: 
return v125;
default: abort ();
}
}
}
}

void v15 (unsigned char v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = 3;
signed char v134 = 3;
signed char v133 = -1;
trace++;
switch (trace)
{
case 2: 
return;
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v136, signed short v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed int v140 = -1;
signed char v139 = -2;
signed char v138 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
