#include <stdlib.h>
signed short v3 (signed int, signed int, signed int, unsigned char);
signed short (*v4) (signed int, signed int, signed int, unsigned char) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
signed char v7 (signed int, signed short, signed char);
signed char (*v8) (signed int, signed short, signed char) = v7;
signed int v9 (unsigned char);
signed int (*v10) (unsigned char) = v9;
extern unsigned int v11 (signed short, signed short);
extern unsigned int (*v12) (signed short, signed short);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed short v19 (signed short, signed char, unsigned int, unsigned int);
extern signed short (*v20) (signed short, signed char, unsigned int, unsigned int);
extern unsigned short v21 (signed int, signed char, signed short);
extern unsigned short (*v22) (signed int, signed char, signed short);
extern unsigned char v23 (unsigned short, signed int);
extern unsigned char (*v24) (unsigned short, signed int);
extern void v25 (signed short, signed char, unsigned int);
extern void (*v26) (signed short, signed char, unsigned int);
void v27 (unsigned char, unsigned short);
void (*v28) (unsigned char, unsigned short) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v119 = 3;
unsigned char v118 = 1;
signed char v117 = 2;

void v27 (unsigned char v120, unsigned short v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned int v124 = 0U;
unsigned short v123 = 0;
unsigned char v122 = 0;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

signed int v9 (unsigned char v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = -3;
unsigned short v127 = 6;
signed char v126 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed int v129, signed short v130, signed char v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed int v134 = -3;
signed char v133 = -1;
unsigned char v132 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed int v135, signed int v136, signed int v137, unsigned char v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = -2;
signed short v140 = -4;
signed short v139 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
