#include <stdlib.h>
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern void v5 (void);
extern void (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
void v11 (unsigned short, unsigned int);
void (*v12) (unsigned short, unsigned int) = v11;
extern signed short v13 (unsigned char, signed int, signed char);
extern signed short (*v14) (unsigned char, signed int, signed char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed short v17 (signed char, signed short, unsigned int);
extern signed short (*v18) (signed char, signed short, unsigned int);
extern unsigned char v19 (unsigned short, signed short, unsigned short);
extern unsigned char (*v20) (unsigned short, signed short, unsigned short);
extern void v21 (signed short);
extern void (*v22) (signed short);
extern unsigned int v23 (signed short, unsigned char);
extern unsigned int (*v24) (signed short, unsigned char);
static unsigned short v25 (unsigned char, signed char, signed char);
static unsigned short (*v26) (unsigned char, signed char, signed char) = v25;
extern unsigned short v27 (unsigned short);
extern unsigned short (*v28) (unsigned short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v121 = 7;
signed int v120 = 2;
unsigned short v119 = 3;

static unsigned short v25 (unsigned char v122, signed char v123, signed char v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 6;
signed int v126 = -4;
unsigned int v125 = 7U;
trace++;
switch (trace)
{
case 2: 
return 7;
default: abort ();
}
}
}
}

void v11 (unsigned short v128, unsigned int v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 1;
signed char v131 = -4;
signed short v130 = -1;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v133;
signed char v134;
signed char v135;
unsigned short v136;
v133 = 3 - 1;
v134 = 3 - -4;
v135 = 1 + 2;
v136 = v25 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 3: 
return;
default: abort ();
}
}
}
}
