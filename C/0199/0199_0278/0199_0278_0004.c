#include <stdlib.h>
extern signed int v1 (signed short, signed char);
extern signed int (*v2) (signed short, signed char);
unsigned char v3 (unsigned int, signed short);
unsigned char (*v4) (unsigned int, signed short) = v3;
extern unsigned char v5 (signed short, signed int, unsigned int, signed short);
extern unsigned char (*v6) (signed short, signed int, unsigned int, signed short);
extern signed short v7 (unsigned int, unsigned short, unsigned short);
extern signed short (*v8) (unsigned int, unsigned short, unsigned short);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
void v13 (signed short, unsigned char, unsigned char);
void (*v14) (signed short, unsigned char, unsigned char) = v13;
extern signed int v15 (signed int, unsigned short, signed short);
extern signed int (*v16) (signed int, unsigned short, signed short);
signed short v17 (void);
signed short (*v18) (void) = v17;
signed short v19 (unsigned short);
signed short (*v20) (unsigned short) = v19;
extern unsigned char v23 (unsigned short);
extern unsigned char (*v24) (unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (signed int, unsigned char, unsigned int, unsigned char);
extern unsigned int (*v28) (signed int, unsigned char, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v114 = 5U;
signed short v113 = -3;
signed short v112 = 1;

signed short v19 (unsigned short v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 7;
signed char v117 = -1;
signed short v116 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
signed short v121 = 1;
unsigned short v120 = 1;
signed int v119 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed short v122, unsigned char v123, unsigned char v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 5;
unsigned short v126 = 5;
signed int v125 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v128, signed short v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 7;
signed char v131 = 2;
unsigned short v130 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
