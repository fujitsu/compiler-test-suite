#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int);
extern unsigned char (*v2) (unsigned char, signed int);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned int v7 (signed int);
extern unsigned int (*v8) (signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (unsigned char, signed char, signed short);
extern unsigned int (*v12) (unsigned char, signed char, signed short);
static void v13 (signed short, signed short);
static void (*v14) (signed short, signed short) = v13;
extern signed int v15 (signed int, unsigned int, signed short);
extern signed int (*v16) (signed int, unsigned int, signed short);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern signed char v21 (unsigned int, unsigned short);
extern signed char (*v22) (unsigned int, unsigned short);
extern unsigned short v23 (signed short, unsigned int);
extern unsigned short (*v24) (signed short, unsigned int);
unsigned short v25 (signed short);
unsigned short (*v26) (signed short) = v25;
void v27 (unsigned char, signed short, signed char, unsigned short);
void (*v28) (unsigned char, signed short, signed char, unsigned short) = v27;
extern unsigned short v29 (unsigned int, unsigned char, unsigned int, signed int);
extern unsigned short (*v30) (unsigned int, unsigned char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v107 = 3;
unsigned int v106 = 2U;
unsigned char v105 = 1;

void v27 (unsigned char v108, signed short v109, signed char v110, unsigned short v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 5;
unsigned short v113 = 5;
signed int v112 = 3;
trace++;
switch (trace)
{
case 9: 
{
signed short v115;
signed short v116;
v115 = 2 - 0;
v116 = 3 - v109;
v13 (v115, v116);
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v25 (signed short v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 3;
unsigned int v119 = 4U;
signed int v118 = 2;
trace++;
switch (trace)
{
case 6: 
return v120;
default: abort ();
}
}
}
}

static void v13 (signed short v121, signed short v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned int v125 = 2U;
unsigned char v124 = 7;
unsigned char v123 = 5;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}
