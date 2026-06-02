#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed char, unsigned short, unsigned short);
extern void (*v4) (signed char, unsigned short, unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (signed short, unsigned int, signed char, signed short);
extern unsigned char (*v8) (signed short, unsigned int, signed char, signed short);
extern void v9 (void);
extern void (*v10) (void);
unsigned short v11 (unsigned int);
unsigned short (*v12) (unsigned int) = v11;
extern signed int v13 (unsigned int, signed short, unsigned short, unsigned char);
extern signed int (*v14) (unsigned int, signed short, unsigned short, unsigned char);
extern signed short v15 (unsigned short, unsigned int, signed char);
extern signed short (*v16) (unsigned short, unsigned int, signed char);
signed int v17 (signed char, signed int, unsigned int, signed short);
signed int (*v18) (signed char, signed int, unsigned int, signed short) = v17;
extern signed int v19 (signed char, unsigned int, signed char, signed int);
extern signed int (*v20) (signed char, unsigned int, signed char, signed int);
extern signed int v21 (unsigned char, signed char, signed char);
extern signed int (*v22) (unsigned char, signed char, signed char);
extern unsigned int v23 (unsigned char, unsigned char, signed short);
extern unsigned int (*v24) (unsigned char, unsigned char, signed short);
extern void v25 (unsigned char);
extern void (*v26) (unsigned char);
extern signed char v27 (unsigned char, signed int, signed short);
extern signed char (*v28) (unsigned char, signed int, signed short);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v116 = 2U;
signed char v115 = -2;
signed short v114 = -4;

signed int v17 (signed char v117, signed int v118, unsigned int v119, signed short v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed int v123 = 3;
unsigned short v122 = 6;
unsigned char v121 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 2;
unsigned char v126 = 3;
unsigned char v125 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
