#include <stdlib.h>
unsigned int v1 (unsigned short, unsigned char);
unsigned int (*v2) (unsigned short, unsigned char) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
unsigned int v7 (unsigned short, unsigned char, unsigned short);
unsigned int (*v8) (unsigned short, unsigned char, unsigned short) = v7;
extern signed char v9 (signed char, signed char, signed char, signed char);
extern signed char (*v10) (signed char, signed char, signed char, signed char);
extern unsigned char v11 (unsigned int, unsigned int, signed char);
extern unsigned char (*v12) (unsigned int, unsigned int, signed char);
extern signed char v13 (unsigned short, signed char, signed short);
extern signed char (*v14) (unsigned short, signed char, signed short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern void v19 (signed short);
extern void (*v20) (signed short);
extern unsigned int v21 (signed char, signed short);
extern unsigned int (*v22) (signed char, signed short);
extern signed char v23 (unsigned short, unsigned char, unsigned char);
extern signed char (*v24) (unsigned short, unsigned char, unsigned char);
static unsigned char v25 (void);
static unsigned char (*v26) (void) = v25;
extern signed char v27 (unsigned short, unsigned char, unsigned char);
extern signed char (*v28) (unsigned short, unsigned char, unsigned char);
void v29 (unsigned int);
void (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v99 = -2;
unsigned int v98 = 5U;
unsigned int v97 = 6U;

void v29 (unsigned int v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = 0;
unsigned char v102 = 7;
unsigned char v101 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v25 (void)
{
{
for (;;) {
signed int v106 = 1;
signed int v105 = -3;
unsigned short v104 = 2;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v107, unsigned char v108, unsigned short v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 2;
unsigned int v111 = 4U;
signed char v110 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v113, unsigned char v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = -1;
signed short v116 = 0;
signed short v115 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v118;
v118 = v25 ();
history[history_index++] = (int)v118;
}
break;
case 2: 
{
unsigned short v119;
signed char v120;
signed short v121;
signed char v122;
v119 = 7 + 1;
v120 = -1 - 0;
v121 = v115 - v117;
v122 = v13 (v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 12: 
return 4U;
default: abort ();
}
}
}
}
