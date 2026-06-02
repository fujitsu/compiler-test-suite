#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed char, signed char);
extern unsigned int (*v2) (unsigned int, signed char, signed char);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed short v7 (unsigned short, signed char, unsigned int, unsigned short);
extern signed short (*v8) (unsigned short, signed char, unsigned int, unsigned short);
void v9 (unsigned short, signed int, unsigned short, unsigned short);
void (*v10) (unsigned short, signed int, unsigned short, unsigned short) = v9;
extern void v11 (unsigned short, unsigned short);
extern void (*v12) (unsigned short, unsigned short);
extern signed short v13 (unsigned char, signed int, unsigned short);
extern signed short (*v14) (unsigned char, signed int, unsigned short);
signed short v15 (signed short, unsigned short, signed short, unsigned short);
signed short (*v16) (signed short, unsigned short, signed short, unsigned short) = v15;
extern unsigned int v17 (signed char, signed short, signed char, signed int);
extern unsigned int (*v18) (signed char, signed short, signed char, signed int);
extern signed int v19 (signed short, unsigned int, unsigned int, signed short);
extern signed int (*v20) (signed short, unsigned int, unsigned int, signed short);
extern unsigned short v21 (unsigned char, signed char);
extern unsigned short (*v22) (unsigned char, signed char);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
void v27 (unsigned int, signed short, unsigned int);
void (*v28) (unsigned int, signed short, unsigned int) = v27;
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v103 = 2;
unsigned char v102 = 1;
unsigned char v101 = 1;

void v27 (unsigned int v104, signed short v105, unsigned int v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = -4;
unsigned char v108 = 4;
unsigned int v107 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
signed char v112 = 1;
unsigned int v111 = 7U;
unsigned int v110 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed short v113, unsigned short v114, signed short v115, unsigned short v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned char v119 = 7;
signed int v118 = 1;
unsigned char v117 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned short v120, signed int v121, unsigned short v122, unsigned short v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed int v126 = 0;
signed char v125 = 0;
unsigned char v124 = 5;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v127;
unsigned short v128;
v127 = v123 + 6;
v128 = v122 + v120;
v11 (v127, v128);
}
break;
case 3: 
{
unsigned short v129;
unsigned short v130;
v129 = 4 + 5;
v130 = v123 + v122;
v11 (v129, v130);
}
break;
case 5: 
return;
default: abort ();
}
}
}
}
