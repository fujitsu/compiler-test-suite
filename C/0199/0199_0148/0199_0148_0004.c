#include <stdlib.h>
extern signed short v1 (signed int, signed short, signed short);
extern signed short (*v2) (signed int, signed short, signed short);
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
extern unsigned char v5 (signed char, unsigned short, unsigned char);
extern unsigned char (*v6) (signed char, unsigned short, unsigned char);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
void v11 (signed short, unsigned short, unsigned char, unsigned char);
void (*v12) (signed short, unsigned short, unsigned char, unsigned char) = v11;
extern unsigned short v13 (unsigned short, unsigned char, signed char);
extern unsigned short (*v14) (unsigned short, unsigned char, signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed short v17 (signed short, unsigned short, signed short);
extern signed short (*v18) (signed short, unsigned short, signed short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (unsigned short, unsigned int, signed int);
extern unsigned short (*v22) (unsigned short, unsigned int, signed int);
unsigned char v23 (unsigned int, unsigned int);
unsigned char (*v24) (unsigned int, unsigned int) = v23;
signed char v25 (unsigned int, unsigned short, signed int, signed short);
signed char (*v26) (unsigned int, unsigned short, signed int, signed short) = v25;
extern signed char v27 (unsigned short, signed short, unsigned char);
extern signed char (*v28) (unsigned short, signed short, unsigned char);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v129 = 2;
signed int v128 = 3;
unsigned int v127 = 2U;

signed char v25 (unsigned int v130, unsigned short v131, signed int v132, signed short v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed int v136 = 0;
signed int v135 = -4;
signed short v134 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned int v137, unsigned int v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = 1;
unsigned int v140 = 1U;
signed short v139 = -1;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

void v11 (signed short v142, unsigned short v143, unsigned char v144, unsigned char v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed int v148 = 0;
signed int v147 = 2;
signed short v146 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
signed int v151 = -4;
signed int v150 = 1;
signed int v149 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
