#include <stdlib.h>
extern unsigned char v1 (signed char, signed short, unsigned char);
extern unsigned char (*v2) (signed char, signed short, unsigned char);
extern signed short v3 (unsigned short, unsigned short);
extern signed short (*v4) (unsigned short, unsigned short);
unsigned int v5 (unsigned int);
unsigned int (*v6) (unsigned int) = v5;
extern signed short v7 (signed char, signed int);
extern signed short (*v8) (signed char, signed int);
extern unsigned char v9 (signed int, signed short, unsigned char, signed short);
extern unsigned char (*v10) (signed int, signed short, unsigned char, signed short);
unsigned short v11 (unsigned char, unsigned char, signed short, signed int);
unsigned short (*v12) (unsigned char, unsigned char, signed short, signed int) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed char v15 (signed char);
extern signed char (*v16) (signed char);
extern unsigned char v17 (unsigned char, signed int, unsigned short, unsigned short);
extern unsigned char (*v18) (unsigned char, signed int, unsigned short, unsigned short);
signed short v19 (signed char, unsigned int);
signed short (*v20) (signed char, unsigned int) = v19;
void v21 (void);
void (*v22) (void) = v21;
extern unsigned short v23 (signed int, unsigned char, unsigned int, signed short);
extern unsigned short (*v24) (signed int, unsigned char, unsigned int, signed short);
unsigned int v25 (signed short, unsigned char, signed char);
unsigned int (*v26) (signed short, unsigned char, signed char) = v25;
extern unsigned int v27 (unsigned short, unsigned char, unsigned char, unsigned int);
extern unsigned int (*v28) (unsigned short, unsigned char, unsigned char, unsigned int);
extern void v29 (signed short, unsigned int, signed char, signed int);
extern void (*v30) (signed short, unsigned int, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v106 = -1;
unsigned int v105 = 2U;
unsigned short v104 = 3;

unsigned int v25 (signed short v107, unsigned char v108, signed char v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 3;
unsigned short v111 = 2;
unsigned char v110 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (void)
{
{
for (;;) {
unsigned int v115 = 2U;
signed int v114 = -4;
unsigned short v113 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed char v116, unsigned int v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed char v120 = 3;
signed char v119 = -4;
signed char v118 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v121, unsigned char v122, signed short v123, signed int v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 4U;
unsigned int v126 = 7U;
unsigned short v125 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = 3;
signed short v130 = 3;
unsigned short v129 = 0;
trace++;
switch (trace)
{
case 10: 
return 5U;
default: abort ();
}
}
}
}
