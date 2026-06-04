#include <stdlib.h>
extern signed short v1 (signed short, signed short, unsigned char);
extern signed short (*v2) (signed short, signed short, unsigned char);
extern unsigned short v3 (signed int, signed int);
extern unsigned short (*v4) (signed int, signed int);
extern unsigned short v5 (unsigned int, signed int, unsigned char);
extern unsigned short (*v6) (unsigned int, signed int, unsigned char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
signed short v11 (void);
signed short (*v12) (void) = v11;
unsigned short v13 (unsigned int);
unsigned short (*v14) (unsigned int) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern signed int v17 (unsigned int, unsigned short, unsigned int);
extern signed int (*v18) (unsigned int, unsigned short, unsigned int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (signed int, signed char, signed int);
extern unsigned short (*v22) (signed int, signed char, signed int);
signed int v23 (unsigned int);
signed int (*v24) (unsigned int) = v23;
extern signed short v25 (signed char, unsigned short, unsigned char);
extern signed short (*v26) (signed char, unsigned short, unsigned char);
void v27 (signed int, signed short, signed short);
void (*v28) (signed int, signed short, signed short) = v27;
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v111 = 5;
unsigned char v110 = 3;
unsigned char v109 = 1;

void v27 (signed int v112, signed short v113, signed short v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 4;
signed char v116 = -2;
signed short v115 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (unsigned int v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 4;
signed short v120 = 0;
signed int v119 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed short v122;
v122 = v29 ();
history[history_index++] = (int)v122;
}
break;
case 15: 
return v119;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned int v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned int v126 = 5U;
signed int v125 = -3;
unsigned char v124 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
unsigned int v129 = 4U;
signed char v128 = 1;
unsigned int v127 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
