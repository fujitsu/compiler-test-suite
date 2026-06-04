#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern signed int v3 (unsigned short, signed int, signed char, unsigned char);
extern signed int (*v4) (unsigned short, signed int, signed char, unsigned char);
extern unsigned short v5 (unsigned short, signed int);
extern unsigned short (*v6) (unsigned short, signed int);
signed int v7 (unsigned char, signed int, signed int, unsigned int);
signed int (*v8) (unsigned char, signed int, signed int, unsigned int) = v7;
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
unsigned int v11 (unsigned int, signed short, signed short);
unsigned int (*v12) (unsigned int, signed short, signed short) = v11;
extern unsigned char v13 (signed char);
extern unsigned char (*v14) (signed char);
signed int v15 (void);
signed int (*v16) (void) = v15;
extern signed short v17 (unsigned int, signed short, signed short, signed short);
extern signed short (*v18) (unsigned int, signed short, signed short, signed short);
extern unsigned int v19 (unsigned short, unsigned short, signed short, unsigned int);
extern unsigned int (*v20) (unsigned short, unsigned short, signed short, unsigned int);
extern unsigned char v21 (signed char, unsigned int, unsigned int, signed char);
extern unsigned char (*v22) (signed char, unsigned int, unsigned int, signed char);
signed int v23 (signed int);
signed int (*v24) (signed int) = v23;
extern unsigned short v25 (unsigned int);
extern unsigned short (*v26) (unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v101 = 5U;
unsigned int v100 = 3U;
unsigned char v99 = 7;

signed int v23 (signed int v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 3;
signed short v104 = 2;
signed int v103 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
signed short v108 = -1;
signed int v107 = 2;
unsigned short v106 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v109, signed short v110, signed short v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 0;
unsigned short v113 = 0;
signed char v112 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned char v115, signed int v116, signed int v117, unsigned int v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = 3;
signed int v120 = -1;
signed int v119 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
signed int v124 = -3;
signed short v123 = 3;
unsigned int v122 = 6U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v125;
signed char v126;
v125 = v122 - v122;
v126 = v9 (v125);
history[history_index++] = (int)v126;
}
break;
case 6: 
{
unsigned int v127;
signed char v128;
v127 = 1U - v122;
v128 = v9 (v127);
history[history_index++] = (int)v128;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
