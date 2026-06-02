#include <stdlib.h>
signed int v1 (unsigned short);
signed int (*v2) (unsigned short) = v1;
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (unsigned int, unsigned char, signed short, signed char);
extern signed short (*v8) (unsigned int, unsigned char, signed short, signed char);
extern void v9 (void);
extern void (*v10) (void);
unsigned int v11 (unsigned short, signed char, signed int);
unsigned int (*v12) (unsigned short, signed char, signed int) = v11;
extern unsigned char v13 (unsigned int, unsigned char, signed int, signed int);
extern unsigned char (*v14) (unsigned int, unsigned char, signed int, signed int);
signed int v15 (signed char);
signed int (*v16) (signed char) = v15;
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
void v19 (void);
void (*v20) (void) = v19;
extern void v21 (signed short, unsigned int);
extern void (*v22) (signed short, unsigned int);
extern unsigned short v23 (unsigned char, unsigned int);
extern unsigned short (*v24) (unsigned char, unsigned int);
extern unsigned int v25 (unsigned int, signed char, signed int, signed int);
extern unsigned int (*v26) (unsigned int, signed char, signed int, signed int);
extern void v27 (signed int);
extern void (*v28) (signed int);
signed short v29 (signed char, unsigned short);
signed short (*v30) (signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v107 = 5;
unsigned short v106 = 7;
unsigned char v105 = 1;

signed short v29 (signed char v108, unsigned short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 2;
signed char v111 = -2;
signed char v110 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (void)
{
{
for (;;) {
unsigned int v115 = 1U;
unsigned short v114 = 1;
signed short v113 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed char v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
unsigned char v119 = 0;
signed char v118 = -2;
unsigned char v117 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v120, signed char v121, signed int v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed int v125 = 1;
signed int v124 = -3;
unsigned char v123 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned short v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 2;
signed short v128 = -1;
unsigned short v127 = 5;
trace++;
switch (trace)
{
case 0: 
{
signed short v130;
unsigned int v131;
v130 = 2 + v128;
v131 = 2U + 7U;
v21 (v130, v131);
}
break;
case 5: 
{
unsigned int v132;
v132 = v5 ();
history[history_index++] = (int)v132;
}
break;
case 13: 
return 2;
case 16: 
return -4;
default: abort ();
}
}
}
}
