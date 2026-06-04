#include <stdlib.h>
extern signed char v1 (signed char, signed int, unsigned short);
extern signed char (*v2) (signed char, signed int, unsigned short);
extern signed int v3 (signed char, unsigned char, unsigned int, unsigned short);
extern signed int (*v4) (signed char, unsigned char, unsigned int, unsigned short);
extern signed int v5 (void);
extern signed int (*v6) (void);
unsigned int v7 (unsigned short, signed short);
unsigned int (*v8) (unsigned short, signed short) = v7;
extern unsigned char v9 (unsigned char);
extern unsigned char (*v10) (unsigned char);
unsigned int v11 (unsigned int);
unsigned int (*v12) (unsigned int) = v11;
extern unsigned short v13 (signed char, unsigned char, unsigned char);
extern unsigned short (*v14) (signed char, unsigned char, unsigned char);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern signed short v17 (unsigned short, signed short);
extern signed short (*v18) (unsigned short, signed short);
void v19 (unsigned int);
void (*v20) (unsigned int) = v19;
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
signed short v23 (unsigned char, signed int, signed int);
signed short (*v24) (unsigned char, signed int, signed int) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern signed int v27 (signed int);
extern signed int (*v28) (signed int);
extern signed short v29 (signed char, signed short);
extern signed short (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v113 = 3;
unsigned char v112 = 4;
unsigned int v111 = 7U;

signed short v23 (unsigned char v114, signed int v115, signed int v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned char v119 = 1;
signed char v118 = -4;
signed int v117 = 3;
trace++;
switch (trace)
{
case 9: 
{
v25 ();
}
break;
case 11: 
return -3;
default: abort ();
}
}
}
}

void v19 (unsigned int v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 7;
unsigned char v122 = 1;
unsigned char v121 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 5;
signed int v126 = -1;
signed int v125 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v128, signed short v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed char v132 = 1;
unsigned int v131 = 4U;
unsigned int v130 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
