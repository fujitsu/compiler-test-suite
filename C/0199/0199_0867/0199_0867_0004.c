#include <stdlib.h>
signed char v5 (signed int, unsigned char, unsigned short, signed char);
signed char (*v6) (signed int, unsigned char, unsigned short, signed char) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
void v9 (void);
void (*v10) (void) = v9;
extern void v11 (unsigned short, unsigned short, signed char, unsigned char);
extern void (*v12) (unsigned short, unsigned short, signed char, unsigned char);
extern void v13 (signed char, unsigned char);
extern void (*v14) (signed char, unsigned char);
void v15 (signed short);
void (*v16) (signed short) = v15;
extern unsigned char v17 (unsigned char, unsigned int, signed short, signed char);
extern unsigned char (*v18) (unsigned char, unsigned int, signed short, signed char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed short v21 (signed int, unsigned int, unsigned char, signed char);
extern signed short (*v22) (signed int, unsigned int, unsigned char, signed char);
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
extern void v25 (signed short, signed int);
extern void (*v26) (signed short, signed int);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v109 = 4;
unsigned short v108 = 0;
unsigned short v107 = 3;

signed short v27 (void)
{
{
for (;;) {
unsigned char v112 = 7;
signed int v111 = -1;
unsigned short v110 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed short v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 7U;
unsigned char v115 = 3;
signed short v114 = -1;
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
unsigned char v119 = 7;
unsigned int v118 = 5U;
unsigned int v117 = 2U;
trace++;
switch (trace)
{
case 1: 
{
signed short v120;
signed int v121;
v120 = -1 + -3;
v121 = 2 + 0;
v25 (v120, v121);
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

signed char v5 (signed int v122, unsigned char v123, unsigned short v124, signed char v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = -4;
signed short v127 = -2;
unsigned char v126 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
