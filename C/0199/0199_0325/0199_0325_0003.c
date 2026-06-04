#include <stdlib.h>
void v1 (unsigned short);
void (*v2) (unsigned short) = v1;
extern unsigned short v3 (unsigned short, unsigned short, unsigned char);
extern unsigned short (*v4) (unsigned short, unsigned short, unsigned char);
extern unsigned char v5 (unsigned char, unsigned int, unsigned char);
extern unsigned char (*v6) (unsigned char, unsigned int, unsigned char);
extern unsigned int v7 (unsigned char, unsigned char, signed short, signed int);
extern unsigned int (*v8) (unsigned char, unsigned char, signed short, signed int);
extern signed int v9 (unsigned char, signed short);
extern signed int (*v10) (unsigned char, signed short);
static void v11 (signed int);
static void (*v12) (signed int) = v11;
extern unsigned char v13 (unsigned char, signed short, signed short, signed int);
extern unsigned char (*v14) (unsigned char, signed short, signed short, signed int);
extern signed short v15 (signed int, signed char, signed int, signed short);
extern signed short (*v16) (signed int, signed char, signed int, signed short);
extern signed int v17 (unsigned int, signed char);
extern signed int (*v18) (unsigned int, signed char);
extern void v19 (signed int, signed int);
extern void (*v20) (signed int, signed int);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern unsigned char v25 (signed int, unsigned int, unsigned short);
extern unsigned char (*v26) (signed int, unsigned int, unsigned short);
unsigned short v27 (signed short);
unsigned short (*v28) (signed short) = v27;
extern unsigned int v29 (signed int);
extern unsigned int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v102 = 3;
signed char v101 = 2;
signed char v100 = 1;

unsigned short v27 (signed short v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = -2;
signed char v105 = -2;
unsigned int v104 = 4U;
trace++;
switch (trace)
{
case 5: 
return 0;
default: abort ();
}
}
}
}

unsigned char v23 (void)
{
{
for (;;) {
unsigned short v109 = 0;
unsigned int v108 = 6U;
unsigned short v107 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
unsigned int v112 = 1U;
unsigned char v111 = 1;
signed short v110 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v11 (signed int v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned short v116 = 0;
signed int v115 = -3;
unsigned int v114 = 7U;
trace++;
switch (trace)
{
case 1: 
{
signed int v117;
signed int v118;
v117 = v113 - -2;
v118 = v115 - -1;
v19 (v117, v118);
}
break;
case 7: 
{
signed int v119;
signed int v120;
v119 = v113 - v115;
v120 = v115 - v113;
v19 (v119, v120);
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

void v1 (unsigned short v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = -1;
unsigned short v123 = 0;
signed int v122 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed int v125;
v125 = -3 - -4;
v11 (v125);
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
