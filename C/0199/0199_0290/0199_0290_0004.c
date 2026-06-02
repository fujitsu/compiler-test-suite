#include <stdlib.h>
extern unsigned short v1 (signed short, signed char, unsigned char);
extern unsigned short (*v2) (signed short, signed char, unsigned char);
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
extern signed int v9 (unsigned char, signed short, unsigned short, signed int);
extern signed int (*v10) (unsigned char, signed short, unsigned short, signed int);
extern void v11 (unsigned char, unsigned char);
extern void (*v12) (unsigned char, unsigned char);
void v13 (void);
void (*v14) (void) = v13;
extern signed char v15 (signed short, signed short);
extern signed char (*v16) (signed short, signed short);
extern signed int v17 (unsigned int, signed char, signed char);
extern signed int (*v18) (unsigned int, signed char, signed char);
signed char v19 (unsigned char);
signed char (*v20) (unsigned char) = v19;
extern unsigned short v21 (signed int, unsigned short, signed int);
extern unsigned short (*v22) (signed int, unsigned short, signed int);
unsigned int v23 (unsigned int, unsigned short, signed char);
unsigned int (*v24) (unsigned int, unsigned short, signed char) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
void v27 (unsigned short, signed int, signed char);
void (*v28) (unsigned short, signed int, signed char) = v27;
unsigned char v29 (signed int, signed char, unsigned short);
unsigned char (*v30) (signed int, signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v118 = -4;
unsigned int v117 = 5U;
signed int v116 = 0;

unsigned char v29 (signed int v119, signed char v120, unsigned short v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 6;
signed char v123 = 3;
signed short v122 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v27 (unsigned short v125, signed int v126, signed char v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed int v130 = 2;
signed int v129 = -4;
signed int v128 = -2;
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

unsigned int v23 (unsigned int v131, unsigned short v132, signed char v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 2U;
signed char v135 = -2;
signed int v134 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned char v137)
{
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = 2;
unsigned int v139 = 3U;
unsigned int v138 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
signed short v143 = 0;
unsigned short v142 = 0;
signed short v141 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
