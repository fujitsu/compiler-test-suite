#include <stdlib.h>
extern signed int v1 (unsigned int, signed char);
extern signed int (*v2) (unsigned int, signed char);
extern unsigned char v3 (signed int, signed short);
extern unsigned char (*v4) (signed int, signed short);
extern unsigned char v5 (unsigned short, unsigned char, signed int);
extern unsigned char (*v6) (unsigned short, unsigned char, signed int);
extern signed char v7 (signed short, unsigned int);
extern signed char (*v8) (signed short, unsigned int);
void v9 (signed int, unsigned char, unsigned int);
void (*v10) (signed int, unsigned char, unsigned int) = v9;
extern void v11 (unsigned int, unsigned int, signed short, unsigned short);
extern void (*v12) (unsigned int, unsigned int, signed short, unsigned short);
unsigned short v13 (signed short);
unsigned short (*v14) (signed short) = v13;
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern unsigned char v19 (unsigned char, unsigned short, signed short);
extern unsigned char (*v20) (unsigned char, unsigned short, signed short);
extern signed char v21 (signed short, unsigned int);
extern signed char (*v22) (signed short, unsigned int);
extern unsigned short v23 (signed char, unsigned char, signed int, unsigned short);
extern unsigned short (*v24) (signed char, unsigned char, signed int, unsigned short);
signed int v25 (void);
signed int (*v26) (void) = v25;
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
unsigned short v29 (unsigned char);
unsigned short (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v112 = 1;
signed char v111 = 0;
unsigned int v110 = 1U;

unsigned short v29 (unsigned char v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 7;
unsigned int v115 = 2U;
signed char v114 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
signed int v119 = -3;
unsigned short v118 = 4;
unsigned short v117 = 3;
trace++;
switch (trace)
{
case 1: 
return v119;
case 4: 
return -1;
default: abort ();
}
}
}
}

unsigned short v13 (signed short v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed int v123 = 3;
unsigned int v122 = 1U;
signed char v121 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v124, unsigned char v125, unsigned int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 1;
signed int v128 = 1;
signed int v127 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
