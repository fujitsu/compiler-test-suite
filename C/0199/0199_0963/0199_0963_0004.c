#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (signed char);
extern unsigned int (*v4) (signed char);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (signed int, signed char);
extern signed int (*v8) (signed int, signed char);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
unsigned char v13 (unsigned char);
unsigned char (*v14) (unsigned char) = v13;
static signed int v15 (void);
static signed int (*v16) (void) = v15;
extern unsigned char v17 (signed char, signed int, unsigned int);
extern unsigned char (*v18) (signed char, signed int, unsigned int);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern void v21 (unsigned char, signed char);
extern void (*v22) (unsigned char, signed char);
extern unsigned char v23 (signed short, signed int, signed char, unsigned short);
extern unsigned char (*v24) (signed short, signed int, signed char, unsigned short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v118 = -2;
unsigned short v117 = 2;
unsigned char v116 = 5;

static signed int v15 (void)
{
{
for (;;) {
unsigned char v121 = 4;
unsigned short v120 = 0;
unsigned int v119 = 2U;
trace++;
switch (trace)
{
case 4: 
return -2;
default: abort ();
}
}
}
}

unsigned char v13 (unsigned char v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
unsigned int v125 = 1U;
unsigned char v124 = 6;
signed short v123 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed short v126;
signed int v127;
signed char v128;
unsigned short v129;
unsigned char v130;
v126 = -4 - 2;
v127 = -4 - -3;
v128 = -2 + -2;
v129 = 7 - 4;
v130 = v23 (v126, v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 3: 
{
signed int v131;
v131 = v15 ();
history[history_index++] = (int)v131;
}
break;
case 5: 
return v122;
default: abort ();
}
}
}
}
