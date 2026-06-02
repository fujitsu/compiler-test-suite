#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern unsigned char v3 (unsigned char, unsigned char, signed int, signed short);
extern unsigned char (*v4) (unsigned char, unsigned char, signed int, signed short);
extern signed char v5 (unsigned short, signed int, signed int);
extern signed char (*v6) (unsigned short, signed int, signed int);
signed char v7 (void);
signed char (*v8) (void) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned int v11 (signed short, signed short, signed int);
extern unsigned int (*v12) (signed short, signed short, signed int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
void v19 (signed char, signed char);
void (*v20) (signed char, signed char) = v19;
signed int v21 (signed int, signed int, signed char);
signed int (*v22) (signed int, signed int, signed char) = v21;
signed char v23 (unsigned char, unsigned short);
signed char (*v24) (unsigned char, unsigned short) = v23;
extern unsigned short v25 (unsigned short, signed short, signed int, unsigned char);
extern unsigned short (*v26) (unsigned short, signed short, signed int, unsigned char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned int v29 (unsigned short, signed char, unsigned short, unsigned short);
extern unsigned int (*v30) (unsigned short, signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v120 = 2;
signed char v119 = 3;
unsigned int v118 = 2U;

signed char v23 (unsigned char v121, unsigned short v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed char v125 = -2;
signed short v124 = -3;
signed int v123 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed int v126, signed int v127, signed char v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed short v131 = -1;
unsigned int v130 = 6U;
signed char v129 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed char v132, signed char v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 2;
unsigned char v135 = 6;
unsigned int v134 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
signed int v139 = -4;
signed int v138 = -1;
signed short v137 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
