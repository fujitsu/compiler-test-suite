#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
unsigned int v3 (signed short);
unsigned int (*v4) (signed short) = v3;
extern signed char v5 (signed char, unsigned int);
extern signed char (*v6) (signed char, unsigned int);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
unsigned int v9 (signed short, unsigned char, unsigned char, unsigned char);
unsigned int (*v10) (signed short, unsigned char, unsigned char, unsigned char) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed char v13 (signed short, signed int);
extern signed char (*v14) (signed short, signed int);
extern void v15 (unsigned char, signed int, signed int, signed char);
extern void (*v16) (unsigned char, signed int, signed int, signed char);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern unsigned char v21 (signed int, signed char);
extern unsigned char (*v22) (signed int, signed char);
extern void v23 (signed short);
extern void (*v24) (signed short);
extern unsigned short v25 (signed char);
extern unsigned short (*v26) (signed char);
extern unsigned int v29 (signed int, unsigned int, signed short, unsigned char);
extern unsigned int (*v30) (signed int, unsigned int, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v113 = 1;
unsigned char v112 = 6;
unsigned short v111 = 4;

unsigned char v17 (void)
{
{
for (;;) {
unsigned int v116 = 7U;
unsigned short v115 = 4;
unsigned short v114 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed short v117, unsigned char v118, unsigned char v119, unsigned char v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned int v123 = 0U;
signed char v122 = -4;
signed char v121 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed short v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 4U;
signed int v126 = 3;
signed short v125 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
signed short v130 = 0;
unsigned char v129 = 2;
unsigned int v128 = 1U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v131;
signed char v132;
v131 = 1 + 6;
v132 = v7 (v131);
history[history_index++] = (int)v132;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}
