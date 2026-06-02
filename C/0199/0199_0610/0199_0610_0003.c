#include <stdlib.h>
extern signed int v1 (signed int, signed short, signed int, signed char);
extern signed int (*v2) (signed int, signed short, signed int, signed char);
extern unsigned char v3 (signed int, unsigned int, signed char, signed char);
extern unsigned char (*v4) (signed int, unsigned int, signed char, signed char);
extern unsigned char v5 (unsigned short, signed int);
extern unsigned char (*v6) (unsigned short, signed int);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
signed char v13 (void);
signed char (*v14) (void) = v13;
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
signed short v19 (signed short, unsigned char, signed short);
signed short (*v20) (signed short, unsigned char, signed short) = v19;
extern signed char v21 (unsigned int);
extern signed char (*v22) (unsigned int);
extern unsigned int v23 (unsigned short, unsigned int);
extern unsigned int (*v24) (unsigned short, unsigned int);
unsigned short v25 (signed int, signed short, signed int);
unsigned short (*v26) (signed int, signed short, signed int) = v25;
extern unsigned char v27 (signed int, signed int, unsigned short);
extern unsigned char (*v28) (signed int, signed int, unsigned short);
extern void v29 (signed int, signed int, signed short);
extern void (*v30) (signed int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v107 = 5U;
signed int v106 = 1;
signed char v105 = 1;

unsigned short v25 (signed int v108, signed short v109, signed int v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 7U;
unsigned char v112 = 7;
unsigned short v111 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed short v114, unsigned char v115, signed short v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned int v119 = 1U;
signed int v118 = -2;
signed int v117 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
unsigned short v122 = 6;
unsigned int v121 = 6U;
signed int v120 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
unsigned char v125 = 4;
unsigned char v124 = 7;
unsigned short v123 = 3;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v126;
unsigned int v127;
unsigned int v128;
v126 = 7 - v123;
v127 = 0U + 5U;
v128 = v23 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 10: 
{
unsigned char v129;
v129 = v17 ();
history[history_index++] = (int)v129;
}
break;
case 12: 
return 5;
default: abort ();
}
}
}
}
