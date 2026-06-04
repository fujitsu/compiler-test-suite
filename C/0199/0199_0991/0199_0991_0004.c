#include <stdlib.h>
extern void v3 (signed short);
extern void (*v4) (signed short);
extern signed char v5 (unsigned short, signed int, signed int);
extern signed char (*v6) (unsigned short, signed int, signed int);
extern unsigned int v7 (unsigned short, unsigned char);
extern unsigned int (*v8) (unsigned short, unsigned char);
signed char v9 (signed int);
signed char (*v10) (signed int) = v9;
signed int v11 (unsigned char);
signed int (*v12) (unsigned char) = v11;
extern signed int v13 (signed char, unsigned char, unsigned int);
extern signed int (*v14) (signed char, unsigned char, unsigned int);
extern signed int v15 (unsigned short, signed short, unsigned short, signed int);
extern signed int (*v16) (unsigned short, signed short, unsigned short, signed int);
extern unsigned short v17 (signed char, unsigned int);
extern unsigned short (*v18) (signed char, unsigned int);
extern unsigned char v19 (unsigned short);
extern unsigned char (*v20) (unsigned short);
extern unsigned short v21 (signed int, signed int, signed short);
extern unsigned short (*v22) (signed int, signed int, signed short);
extern void v23 (void);
extern void (*v24) (void);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
void v27 (signed int, unsigned char, signed short, signed int);
void (*v28) (signed int, unsigned char, signed short, signed int) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed short v120 = 0;
unsigned char v119 = 7;
unsigned char v118 = 3;

void v27 (signed int v121, unsigned char v122, signed short v123, signed int v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = -2;
unsigned char v126 = 7;
unsigned short v125 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (void)
{
{
for (;;) {
signed short v130 = 1;
unsigned short v129 = 2;
signed char v128 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned char v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = 1;
signed short v133 = 2;
signed char v132 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed int v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = 1;
unsigned short v137 = 7;
signed int v136 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
