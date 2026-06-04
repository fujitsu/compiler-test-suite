#include <stdlib.h>
extern void v1 (signed int, signed short, signed char);
extern void (*v2) (signed int, signed short, signed char);
unsigned char v3 (unsigned char, signed short);
unsigned char (*v4) (unsigned char, signed short) = v3;
unsigned char v5 (unsigned short, signed int, unsigned char);
unsigned char (*v6) (unsigned short, signed int, unsigned char) = v5;
extern unsigned short v7 (signed short, signed int);
extern unsigned short (*v8) (signed short, signed int);
extern signed int v9 (signed char, unsigned char, unsigned int, unsigned int);
extern signed int (*v10) (signed char, unsigned char, unsigned int, unsigned int);
extern unsigned int v11 (unsigned short);
extern unsigned int (*v12) (unsigned short);
extern unsigned short v13 (unsigned short, unsigned short);
extern unsigned short (*v14) (unsigned short, unsigned short);
extern unsigned int v15 (unsigned short);
extern unsigned int (*v16) (unsigned short);
unsigned short v17 (signed int, signed int);
unsigned short (*v18) (signed int, signed int) = v17;
extern signed short v19 (unsigned short, signed int, unsigned char, unsigned short);
extern signed short (*v20) (unsigned short, signed int, unsigned char, unsigned short);
extern signed int v21 (unsigned int, unsigned short, signed int, unsigned short);
extern signed int (*v22) (unsigned int, unsigned short, signed int, unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
unsigned short v25 (unsigned char);
unsigned short (*v26) (unsigned char) = v25;
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v119 = -2;
unsigned short v118 = 1;
signed char v117 = -1;

unsigned short v25 (unsigned char v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed int v123 = -2;
unsigned short v122 = 2;
unsigned int v121 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed int v124, signed int v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned char v128 = 6;
unsigned int v127 = 0U;
signed int v126 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v129, signed int v130, unsigned char v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = -2;
unsigned int v133 = 6U;
signed short v132 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v135, signed short v136)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned short v139 = 7;
signed short v138 = -2;
signed char v137 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
