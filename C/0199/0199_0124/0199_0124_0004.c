#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned short, signed int);
extern unsigned char (*v2) (signed char, unsigned short, signed int);
signed char v3 (unsigned short, unsigned int);
signed char (*v4) (unsigned short, unsigned int) = v3;
extern void v5 (signed int, unsigned char, signed short, unsigned char);
extern void (*v6) (signed int, unsigned char, signed short, unsigned char);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern unsigned short v9 (unsigned char, unsigned char);
extern unsigned short (*v10) (unsigned char, unsigned char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (signed short, signed int, unsigned char, signed int);
extern unsigned char (*v14) (signed short, signed int, unsigned char, signed int);
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
unsigned int v17 (unsigned int, signed short, signed char, signed short);
unsigned int (*v18) (unsigned int, signed short, signed char, signed short) = v17;
signed char v19 (void);
signed char (*v20) (void) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed short v23 (signed short, unsigned short);
extern signed short (*v24) (signed short, unsigned short);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v29 (signed int, signed short, unsigned char, signed int);
extern unsigned short (*v30) (signed int, signed short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v122 = 3;
unsigned char v121 = 0;
unsigned short v120 = 4;

signed char v19 (void)
{
{
for (;;) {
unsigned char v125 = 6;
unsigned char v124 = 2;
unsigned short v123 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned int v126, signed short v127, signed char v128, signed short v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 7U;
signed short v131 = -1;
signed short v130 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned short v133, unsigned int v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed char v137 = -4;
signed int v136 = -3;
signed char v135 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
