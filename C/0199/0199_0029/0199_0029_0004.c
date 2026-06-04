#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed int, signed short, signed short, unsigned int);
extern void (*v4) (signed int, signed short, signed short, unsigned int);
extern signed int v5 (signed char, signed int, unsigned short);
extern signed int (*v6) (signed char, signed int, unsigned short);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (signed int, signed short, signed char, unsigned char);
extern unsigned short (*v10) (signed int, signed short, signed char, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
unsigned short v17 (signed int, signed char);
unsigned short (*v18) (signed int, signed char) = v17;
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern signed int v21 (unsigned short, signed int, signed int);
extern signed int (*v22) (unsigned short, signed int, signed int);
unsigned int v23 (signed char, unsigned char, signed int);
unsigned int (*v24) (signed char, unsigned char, signed int) = v23;
extern void v25 (signed char, unsigned short, unsigned char);
extern void (*v26) (signed char, unsigned short, unsigned char);
extern signed short v27 (signed int);
extern signed short (*v28) (signed int);
void v29 (unsigned char, signed int, signed int);
void (*v30) (unsigned char, signed int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v115 = -2;
unsigned int v114 = 2U;
signed char v113 = -2;

void v29 (unsigned char v116, signed int v117, signed int v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned short v121 = 2;
signed short v120 = 3;
signed int v119 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed char v122, unsigned char v123, signed int v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = 2;
unsigned int v126 = 6U;
signed short v125 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed int v128, signed char v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed int v132 = 0;
unsigned short v131 = 1;
signed int v130 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
