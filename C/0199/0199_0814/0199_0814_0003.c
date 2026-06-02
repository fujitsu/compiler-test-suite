#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int);
extern unsigned char (*v2) (signed char, unsigned int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern void v5 (unsigned int, unsigned char);
extern void (*v6) (unsigned int, unsigned char);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v9 (signed int, unsigned char);
extern void (*v10) (signed int, unsigned char);
extern unsigned int v11 (unsigned int, signed char);
extern unsigned int (*v12) (unsigned int, signed char);
extern void v13 (unsigned short, unsigned int);
extern void (*v14) (unsigned short, unsigned int);
extern unsigned short v15 (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned short (*v16) (unsigned int, signed char, unsigned int, unsigned short);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
signed char v21 (unsigned int, signed char, signed char, unsigned char);
signed char (*v22) (unsigned int, signed char, signed char, unsigned char) = v21;
unsigned char v23 (signed short, unsigned char, unsigned int, signed short);
unsigned char (*v24) (signed short, unsigned char, unsigned int, signed short) = v23;
extern signed short v25 (unsigned short);
extern signed short (*v26) (unsigned short);
extern unsigned int v27 (signed short, unsigned short);
extern unsigned int (*v28) (signed short, unsigned short);
extern signed int v29 (unsigned int, signed short, signed short, unsigned int);
extern signed int (*v30) (unsigned int, signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v116 = -2;
signed short v115 = -1;
signed char v114 = 3;

unsigned char v23 (signed short v117, unsigned char v118, unsigned int v119, signed short v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned short v123 = 5;
signed short v122 = 1;
unsigned char v121 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned int v124, signed char v125, signed char v126, unsigned char v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned int v130 = 4U;
unsigned int v129 = 5U;
signed char v128 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
