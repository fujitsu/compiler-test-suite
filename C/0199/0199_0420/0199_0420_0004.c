#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned int);
extern unsigned int (*v2) (signed char, unsigned int);
signed int v3 (void);
signed int (*v4) (void) = v3;
extern unsigned char v7 (signed char);
extern unsigned char (*v8) (signed char);
unsigned short v9 (unsigned short, unsigned short, unsigned int);
unsigned short (*v10) (unsigned short, unsigned short, unsigned int) = v9;
extern void v11 (unsigned char, signed short);
extern void (*v12) (unsigned char, signed short);
void v13 (signed short, signed int, signed short);
void (*v14) (signed short, signed int, signed short) = v13;
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
extern signed short v19 (unsigned short, unsigned char, unsigned short);
extern signed short (*v20) (unsigned short, unsigned char, unsigned short);
unsigned int v21 (signed char, unsigned short, unsigned int);
unsigned int (*v22) (signed char, unsigned short, unsigned int) = v21;
extern unsigned int v23 (signed char, unsigned short, unsigned char, signed int);
extern unsigned int (*v24) (signed char, unsigned short, unsigned char, signed int);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
extern signed short v27 (signed int, unsigned char, unsigned int, signed char);
extern signed short (*v28) (signed int, unsigned char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v119 = 1U;
signed short v118 = -2;
signed short v117 = 2;

unsigned int v21 (signed char v120, unsigned short v121, unsigned int v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned int v125 = 7U;
signed short v124 = 3;
unsigned char v123 = 3;
trace++;
switch (trace)
{
case 9: 
return 4U;
case 11: 
return v125;
default: abort ();
}
}
}
}

void v13 (signed short v126, signed int v127, signed short v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = -4;
signed char v130 = 0;
unsigned short v129 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v132, unsigned short v133, unsigned int v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed int v137 = 2;
unsigned int v136 = 5U;
signed char v135 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
unsigned char v140 = 5;
signed char v139 = 2;
unsigned short v138 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
