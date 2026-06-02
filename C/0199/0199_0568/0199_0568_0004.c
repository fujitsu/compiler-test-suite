#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern signed short v3 (unsigned short, unsigned short, signed short);
extern signed short (*v4) (unsigned short, unsigned short, signed short);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed int v9 (unsigned char, unsigned short);
extern signed int (*v10) (unsigned char, unsigned short);
extern unsigned short v11 (signed char, signed char, signed char, signed int);
extern unsigned short (*v12) (signed char, signed char, signed char, signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
signed int v15 (unsigned short, unsigned int, unsigned char, signed short);
signed int (*v16) (unsigned short, unsigned int, unsigned char, signed short) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (unsigned int, signed int, unsigned short);
extern signed char (*v20) (unsigned int, signed int, unsigned short);
extern unsigned int v21 (signed char);
extern unsigned int (*v22) (signed char);
extern void v23 (signed short, signed char);
extern void (*v24) (signed short, signed char);
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
extern void v29 (unsigned int, unsigned short, signed char, unsigned short);
extern void (*v30) (unsigned int, unsigned short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v125 = 3;
unsigned short v124 = 2;
signed char v123 = 1;

signed int v15 (unsigned short v126, unsigned int v127, unsigned char v128, signed short v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 1U;
signed int v131 = -3;
unsigned char v130 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
