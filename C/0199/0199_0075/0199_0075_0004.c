#include <stdlib.h>
extern unsigned short v1 (unsigned int);
extern unsigned short (*v2) (unsigned int);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
unsigned short v7 (signed short, unsigned short, signed short);
unsigned short (*v8) (signed short, unsigned short, signed short) = v7;
extern void v9 (signed char, signed char);
extern void (*v10) (signed char, signed char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed short v13 (unsigned char, signed int);
extern signed short (*v14) (unsigned char, signed int);
extern signed char v15 (unsigned short, signed short, signed short);
extern signed char (*v16) (unsigned short, signed short, signed short);
extern signed int v17 (unsigned char);
extern signed int (*v18) (unsigned char);
unsigned char v19 (signed int, unsigned short);
unsigned char (*v20) (signed int, unsigned short) = v19;
void v21 (signed char, signed int);
void (*v22) (signed char, signed int) = v21;
extern unsigned short v23 (unsigned short);
extern unsigned short (*v24) (unsigned short);
extern unsigned short v25 (signed int, signed int, signed short);
extern unsigned short (*v26) (signed int, signed int, signed short);
signed int v27 (signed int, unsigned short, unsigned int);
signed int (*v28) (signed int, unsigned short, unsigned int) = v27;
unsigned short v29 (signed char, signed short, signed char, signed int);
unsigned short (*v30) (signed char, signed short, signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v110 = 5;
unsigned int v109 = 0U;
signed char v108 = 3;

unsigned short v29 (signed char v111, signed short v112, signed char v113, signed int v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = -4;
signed short v116 = -3;
signed int v115 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (signed int v118, unsigned short v119, unsigned int v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = -3;
signed char v122 = 1;
unsigned int v121 = 2U;
trace++;
switch (trace)
{
case 2: 
return 0;
default: abort ();
}
}
}
}

void v21 (signed char v124, signed int v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned char v128 = 3;
signed short v127 = -4;
signed short v126 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed int v129, unsigned short v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = 1;
unsigned int v132 = 6U;
signed int v131 = -1;
trace++;
switch (trace)
{
case 8: 
return 5;
default: abort ();
}
}
}
}

unsigned short v7 (signed short v134, unsigned short v135, signed short v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = 1;
unsigned int v138 = 5U;
signed char v137 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
