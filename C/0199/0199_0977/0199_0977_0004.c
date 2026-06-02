#include <stdlib.h>
extern unsigned char v3 (signed char, unsigned int, signed char);
extern unsigned char (*v4) (signed char, unsigned int, signed char);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
extern unsigned int v13 (unsigned char, unsigned short, signed int, signed int);
extern unsigned int (*v14) (unsigned char, unsigned short, signed int, signed int);
unsigned short v15 (signed short, signed char);
unsigned short (*v16) (signed short, signed char) = v15;
void v17 (void);
void (*v18) (void) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
void v21 (signed short);
void (*v22) (signed short) = v21;
static unsigned char v23 (signed short, unsigned int);
static unsigned char (*v24) (signed short, unsigned int) = v23;
extern unsigned short v25 (unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned short, unsigned int);
extern signed int v27 (unsigned int, unsigned int, unsigned char);
extern signed int (*v28) (unsigned int, unsigned int, unsigned char);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v113 = 5;
unsigned int v112 = 5U;
unsigned short v111 = 5;

static unsigned char v23 (signed short v114, unsigned int v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 1;
unsigned short v117 = 6;
unsigned short v116 = 3;
trace++;
switch (trace)
{
case 10: 
return 1;
default: abort ();
}
}
}
}

void v21 (signed short v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = -2;
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

void v17 (void)
{
{
for (;;) {
signed char v125 = -2;
unsigned short v124 = 5;
unsigned char v123 = 0;
trace++;
switch (trace)
{
case 9: 
{
signed short v126;
unsigned int v127;
unsigned char v128;
v126 = 1 - 0;
v127 = 4U + 4U;
v128 = v23 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v15 (signed short v129, signed char v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned int v133 = 7U;
signed short v132 = -2;
unsigned char v131 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
