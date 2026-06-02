#include <stdlib.h>
extern void v1 (signed short, unsigned short, signed short, signed char);
extern void (*v2) (signed short, unsigned short, signed short, signed char);
extern void v3 (signed short, unsigned int, unsigned short, signed int);
extern void (*v4) (signed short, unsigned int, unsigned short, signed int);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
void v9 (signed int, unsigned int, unsigned int, unsigned char);
void (*v10) (signed int, unsigned int, unsigned int, unsigned char) = v9;
extern signed short v11 (unsigned int, unsigned char, signed short);
extern signed short (*v12) (unsigned int, unsigned char, signed short);
void v13 (unsigned int, signed int, signed int);
void (*v14) (unsigned int, signed int, signed int) = v13;
extern void v15 (unsigned char, signed short);
extern void (*v16) (unsigned char, signed short);
extern unsigned short v17 (unsigned int, signed int, unsigned short, signed char);
extern unsigned short (*v18) (unsigned int, signed int, unsigned short, signed char);
extern signed int v19 (signed short, unsigned int, signed int);
extern signed int (*v20) (signed short, unsigned int, signed int);
extern unsigned char v21 (unsigned char, unsigned int);
extern unsigned char (*v22) (unsigned char, unsigned int);
extern signed int v23 (signed short, unsigned short, signed int, unsigned int);
extern signed int (*v24) (signed short, unsigned short, signed int, unsigned int);
extern signed short v25 (signed short, unsigned char, signed int);
extern signed short (*v26) (signed short, unsigned char, signed int);
unsigned short v27 (unsigned int, unsigned int, unsigned int);
unsigned short (*v28) (unsigned int, unsigned int, unsigned int) = v27;
static void v29 (unsigned char, signed short);
static void (*v30) (unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v94 = 2;
unsigned short v93 = 3;
unsigned short v92 = 7;

static void v29 (unsigned char v95, signed short v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = 1;
unsigned int v98 = 0U;
unsigned char v97 = 6;
trace++;
switch (trace)
{
case 9: 
return;
default: abort ();
}
}
}
}

unsigned short v27 (unsigned int v100, unsigned int v101, unsigned int v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned short v105 = 2;
signed int v104 = 1;
signed short v103 = 2;
trace++;
switch (trace)
{
case 8: 
{
unsigned char v106;
signed short v107;
v106 = 7 - 4;
v107 = -1 + -4;
v29 (v106, v107);
}
break;
case 10: 
return 2;
default: abort ();
}
}
}
}

void v13 (unsigned int v108, signed int v109, signed int v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 0U;
signed int v112 = 1;
unsigned short v111 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v114, unsigned int v115, unsigned int v116, unsigned char v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 7;
signed int v119 = 3;
signed int v118 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
unsigned short v123 = 4;
signed char v122 = 2;
unsigned int v121 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
