#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (signed int, signed int, unsigned int, signed int);
extern unsigned short (*v8) (signed int, signed int, unsigned int, signed int);
static signed int v9 (signed char);
static signed int (*v10) (signed char) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned int v13 (unsigned short, signed int, unsigned char, unsigned char);
extern unsigned int (*v14) (unsigned short, signed int, unsigned char, unsigned char);
extern unsigned short v15 (unsigned char, unsigned char);
extern unsigned short (*v16) (unsigned char, unsigned char);
unsigned char v17 (unsigned short, unsigned int, signed char, unsigned int);
unsigned char (*v18) (unsigned short, unsigned int, signed char, unsigned int) = v17;
extern signed int v19 (signed int, signed int);
extern signed int (*v20) (signed int, signed int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned char v23 (signed short);
extern unsigned char (*v24) (signed short);
extern signed int v25 (unsigned char, unsigned char, unsigned int, signed char);
extern signed int (*v26) (unsigned char, unsigned char, unsigned int, signed char);
extern signed char v27 (unsigned int, signed short);
extern signed char (*v28) (unsigned int, signed short);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v112 = 2;
unsigned short v111 = 7;
unsigned char v110 = 7;

unsigned char v17 (unsigned short v113, unsigned int v114, signed char v115, unsigned int v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned short v119 = 7;
unsigned int v118 = 6U;
signed short v117 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed char v120;
signed int v121;
v120 = -2 + v115;
v121 = v9 (v120);
history[history_index++] = (int)v121;
}
break;
case 13: 
return 5;
default: abort ();
}
}
}
}

static signed int v9 (signed char v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
unsigned char v125 = 0;
signed int v124 = 0;
signed int v123 = 2;
trace++;
switch (trace)
{
case 2: 
{
signed int v126;
v126 = v21 ();
history[history_index++] = (int)v126;
}
break;
case 4: 
{
signed short v127;
v127 = v11 ();
history[history_index++] = (int)v127;
}
break;
case 6: 
{
signed int v128;
v128 = v21 ();
history[history_index++] = (int)v128;
}
break;
case 12: 
return v123;
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
signed char v131 = 1;
unsigned char v130 = 0;
signed int v129 = -4;
trace++;
switch (trace)
{
case 9: 
return 1U;
default: abort ();
}
}
}
}
