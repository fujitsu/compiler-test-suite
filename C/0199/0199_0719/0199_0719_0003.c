#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned short);
extern signed char (*v2) (unsigned char, unsigned short);
unsigned short v3 (signed char, signed char, signed int, signed int);
unsigned short (*v4) (signed char, signed char, signed int, signed int) = v3;
extern signed char v5 (signed char, signed int, unsigned int);
extern signed char (*v6) (signed char, signed int, unsigned int);
extern void v7 (signed char, signed char);
extern void (*v8) (signed char, signed char);
void v9 (void);
void (*v10) (void) = v9;
extern signed short v11 (unsigned char, unsigned short, unsigned int, unsigned int);
extern signed short (*v12) (unsigned char, unsigned short, unsigned int, unsigned int);
unsigned short v13 (unsigned int);
unsigned short (*v14) (unsigned int) = v13;
void v15 (signed char, unsigned char);
void (*v16) (signed char, unsigned char) = v15;
extern signed char v17 (signed short, signed int);
extern signed char (*v18) (signed short, signed int);
extern unsigned short v19 (signed char, signed int, signed char);
extern unsigned short (*v20) (signed char, signed int, signed char);
extern unsigned short v21 (signed char, unsigned int, signed char);
extern unsigned short (*v22) (signed char, unsigned int, signed char);
extern unsigned int v23 (unsigned short, unsigned int);
extern unsigned int (*v24) (unsigned short, unsigned int);
extern signed char v25 (signed int, signed int, signed char, signed short);
extern signed char (*v26) (signed int, signed int, signed char, signed short);
extern unsigned short v27 (unsigned char, signed short, unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned char, signed short, unsigned char, unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v105 = 5;
unsigned short v104 = 0;
signed short v103 = 0;

void v15 (signed char v106, unsigned char v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed char v110 = 2;
signed char v109 = 0;
signed char v108 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned int v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = 2;
signed int v113 = 2;
unsigned int v112 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
unsigned short v117 = 7;
unsigned char v116 = 3;
unsigned short v115 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed char v118, signed char v119, signed int v120, signed int v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned int v124 = 5U;
signed short v123 = -4;
unsigned int v122 = 7U;
trace++;
switch (trace)
{
case 1: 
{
signed int v125;
signed int v126;
signed char v127;
signed short v128;
signed char v129;
v125 = v121 + -2;
v126 = v121 + 2;
v127 = v119 + 0;
v128 = -4 - -3;
v129 = v25 (v125, v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 3: 
{
signed char v130;
signed int v131;
unsigned int v132;
signed char v133;
v130 = v119 + -2;
v131 = 2 + v121;
v132 = v122 - 1U;
v133 = v5 (v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 15: 
return 6;
default: abort ();
}
}
}
}
