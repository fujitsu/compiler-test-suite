#include <stdlib.h>
extern signed short v1 (unsigned short);
extern signed short (*v2) (unsigned short);
extern void v3 (unsigned char, signed char, signed char);
extern void (*v4) (unsigned char, signed char, signed char);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned int v7 (unsigned int, unsigned short);
extern unsigned int (*v8) (unsigned int, unsigned short);
extern signed char v9 (unsigned int, signed short, unsigned char);
extern signed char (*v10) (unsigned int, signed short, unsigned char);
extern void v11 (unsigned int, signed char, signed char, signed short);
extern void (*v12) (unsigned int, signed char, signed char, signed short);
unsigned char v13 (unsigned char, signed int, unsigned short, signed char);
unsigned char (*v14) (unsigned char, signed int, unsigned short, signed char) = v13;
extern unsigned char v15 (signed int, signed char, signed char, signed char);
extern unsigned char (*v16) (signed int, signed char, signed char, signed char);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern signed char v19 (signed short, unsigned int);
extern signed char (*v20) (signed short, unsigned int);
signed short v21 (unsigned int, signed char, unsigned int, unsigned short);
signed short (*v22) (unsigned int, signed char, unsigned int, unsigned short) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (signed int, unsigned int, signed char);
extern void (*v26) (signed int, unsigned int, signed char);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern unsigned char v29 (unsigned int, signed int);
extern unsigned char (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v122 = 3;
unsigned char v121 = 3;
signed char v120 = 2;

signed int v27 (void)
{
{
for (;;) {
signed short v125 = 1;
unsigned short v124 = 2;
signed char v123 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (unsigned int v126, signed char v127, unsigned int v128, unsigned short v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 3;
unsigned int v131 = 7U;
signed char v130 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned char v133, signed int v134, unsigned short v135, signed char v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = -1;
unsigned char v138 = 4;
signed short v137 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
