#include <stdlib.h>
extern void v1 (unsigned char, signed int, unsigned short, signed short);
extern void (*v2) (unsigned char, signed int, unsigned short, signed short);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern unsigned char v5 (unsigned char, signed int, unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned char, signed int, unsigned char, unsigned char);
extern void v7 (signed short, signed short, unsigned char, unsigned short);
extern void (*v8) (signed short, signed short, unsigned char, unsigned short);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
signed int v13 (void);
signed int (*v14) (void) = v13;
void v15 (unsigned char, signed int);
void (*v16) (unsigned char, signed int) = v15;
extern void v17 (unsigned char, unsigned int, unsigned int, signed char);
extern void (*v18) (unsigned char, unsigned int, unsigned int, signed char);
unsigned short v19 (signed short);
unsigned short (*v20) (signed short) = v19;
extern unsigned int v21 (unsigned char, signed char);
extern unsigned int (*v22) (unsigned char, signed char);
static signed char v23 (signed short, signed short);
static signed char (*v24) (signed short, signed short) = v23;
extern void v25 (unsigned short, unsigned short, signed int, unsigned short);
extern void (*v26) (unsigned short, unsigned short, signed int, unsigned short);
void v27 (void);
void (*v28) (void) = v27;
extern unsigned short v29 (signed char, signed short, signed int);
extern unsigned short (*v30) (signed char, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v95 = 4U;
signed char v94 = 1;
signed char v93 = 2;

void v27 (void)
{
{
for (;;) {
signed int v98 = -2;
signed char v97 = -2;
unsigned char v96 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v23 (signed short v99, signed short v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = 0;
signed int v102 = -4;
unsigned short v101 = 4;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v104;
unsigned short v105;
signed int v106;
unsigned short v107;
v104 = v101 - v101;
v105 = v101 + v101;
v106 = v102 + -4;
v107 = v101 + 1;
v25 (v104, v105, v106, v107);
}
break;
case 8: 
{
unsigned short v108;
unsigned short v109;
signed int v110;
unsigned short v111;
v108 = 7 - 6;
v109 = v101 + v101;
v110 = -1 + v102;
v111 = 2 - 7;
v25 (v108, v109, v110, v111);
}
break;
case 12: 
return v103;
default: abort ();
}
}
}
}

unsigned short v19 (signed short v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 0;
unsigned char v114 = 4;
unsigned char v113 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned char v116, signed int v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 0;
unsigned char v119 = 7;
unsigned char v118 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
unsigned short v123 = 5;
signed char v122 = -3;
signed short v121 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
unsigned char v126 = 1;
unsigned short v125 = 2;
unsigned char v124 = 6;
trace++;
switch (trace)
{
case 1: 
{
signed short v127;
signed short v128;
signed char v129;
v127 = -4 + -2;
v128 = 3 + -4;
v129 = v23 (v127, v128);
history[history_index++] = (int)v129;
}
break;
case 13: 
return v124;
default: abort ();
}
}
}
}
